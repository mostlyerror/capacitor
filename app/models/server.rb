class Server < ApplicationRecord
  belongs_to :user

  def sync_from data
    update(
      external_id: data.id
    )
#     self.do_name = data.name
#     self.do_status = data.status
#     self.memory_kilobytes = data.memory
#     self.vcpus = data.vcpus
=begin
    {
      "id" => 190999424,
      "name" => "myDroplet",
      "memory" => 1024,
      "vcpus" => 1,
      "disk" => 30,
      "locked" => false,
      "created_at" => "2020-05-04T18:01:35Z",
      "status" => "new",
      "backup_ids" => [],
      "snapshot_ids" => [],
      "action_ids" => nil,
      "features" => [],
      "region" => {
        "slug" => "tor1",
        "name" => "Toronto 1",
        "sizes" => [
          [ 0] "s-1vcpu-1gb",
          [ 1] "512mb",
          [ 2] "s-1vcpu-2gb",
          [ 3] "1gb",
          [ 4] "s-3vcpu-1gb",
          [ 5] "s-2vcpu-2gb",
          [ 6] "s-1vcpu-3gb",
          [ 7] "s-2vcpu-4gb",
          [ 8] "2gb",
          [ 9] "s-4vcpu-8gb",
          [10] "m-1vcpu-8gb",
          [11] "c-2",
          [12] "4gb",
          [13] "m-16gb",
          [14] "s-6vcpu-16gb",
          [15] "c-4",
          [16] "8gb",
          [17] "m-32gb",
          [18] "s-8vcpu-32gb",
          [19] "c-8",
          [20] "16gb",
          [21] "s-12vcpu-48gb",
          [22] "m-64gb",
          [23] "s-16vcpu-64gb",
          [24] "c-16",
          [25] "32gb",
          [26] "s-20vcpu-96gb",
          [27] "48gb",
          [28] "m-128gb",
          [29] "s-24vcpu-128gb",
          [30] "64gb",
          [31] "s-32vcpu-192gb",
          [32] "m-224gb"
        ],
        "available" => true,
        "features" => [
          [0] "private_networking",
          [1] "backups",
          [2] "ipv6",
          [3] "metadata",
          [4] "install_agent",
          [5] "storage",
          [6] "image_transfer"
        ]
      },
      "image" => {
        "id" => 60463541,
        "name" => "9.12 x64",
        "distribution" => "Debian",
        "slug" => "debian-9-x64",
        "public" => true,
        "regions" => [
          [ 0] "nyc3",
          [ 1] "nyc1",
          [ 2] "sfo1",
          [ 3] "nyc2",
          [ 4] "ams2",
          [ 5] "sgp1",
          [ 6] "lon1",
          [ 7] "nyc3",
          [ 8] "ams3",
          [ 9] "fra1",
          [10] "tor1",
          [11] "sfo2",
          [12] "blr1",
          [13] "sfo3"
        ],
        "type" => "base",
        "min_disk_size" => 20,
        "size_gigabytes" => 2.15,
        "created_at" => "2020-03-11T18:00:38Z"
      },
      "networks" => {
        "v4" => [],
        "v6" => []
      },
      "kernel" => nil,
      "size_slug" => "1gb",
      "tags" => [],
      "volume_ids" => [],
      "names" => nil,
      "volumes" => nil,
      "ssh_keys" => nil,
      "backups" => nil,
      "monitoring" => nil,
      "size" => "1gb",
      "ipv6" => nil,
      "user_data" => nil,
      "private_networking" => nil,
      "vpc_uuid" => nil
    }
=end
  end

  # def sync_from_api; end
end
