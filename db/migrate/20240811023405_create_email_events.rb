class CreateEmailEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :email_events do |t|
      t.string :event_type
      t.string :device_type
      t.string :email_client
      t.string :geolocation
      t.jsonb :additional_data
      t.integer :email_id
      t.timestamps
    end
  end
end
