class CreateServers < ActiveRecord::Migration[6.0]
  def change
    create_table :servers do |t|
      t.references :user, index: true

      t.string :status, null: false, default: 'pending'
      t.string :provider, null: false
      t.string :external_id
      t.string :name
      t.string :region
      t.jsonb :api_data, default: '{}'

      t.timestamps
    end

    add_foreign_key :servers, :users
    add_index :servers, :api_data, using: :gin
  end
end
