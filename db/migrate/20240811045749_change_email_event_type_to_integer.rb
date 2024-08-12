class ChangeEmailEventTypeToInteger < ActiveRecord::Migration[7.1]
  def change
    change_column :email_events, :event_type :integer
    change_column :email_events, :device_type :integer
    change_column :email_events, :email_client :integer
  end
end
