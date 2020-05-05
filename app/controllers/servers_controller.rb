class ServersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :create]

  def index
    @servers = current_user.servers
    @server = Server.new(user: current_user)

    @regions = client.regions.all
    @images = client.images.all
  end

  def create
    name = server_params[:name]
    region = server_params[:region]
    image = 'debian-9-x64'
    size = '1gb'

    server = current_user.servers.create(
      status: 'pending',
      provider: 'digital_ocean',
    )

    droplet = DropletKit::Droplet.new(
      name: name,
      region: region,
      image: image,
      size: size
    )

    begin
      api_data = client.droplets.create(droplet)
      server.api_data = api_data
      server.save

      server.sync_from(api_data)
    rescue DropletKit::Error => e
      flash[:notice] = e.message
      return redirect_back(fallback_location: root_path)
    end

    redirect_back(fallback_location: root_path)
  end

  def clear
    # alternatively, we could tag the droplets and then do
    # client.droplets.delete_for_tag(tag_name: "user_#{current_user.id}")
    current_user.servers.each do |server|
      begin
        deleted = client.droplets.delete(id: server.external_id)
        server.destroy
      rescue DropletKit::Error => e
        flash[:notice] = e.message
        ap e
      end

    end

    redirect_back(fallback_location: root_path)
  end

  private

  def server_params
    params.require(:server).permit(:name, :provider, :region, :size)
  end

  def client
    token = Rails.application.credentials[:digital_ocean][:token]
    @client ||= DropletKit::Client.new(access_token: token)
  end
end

