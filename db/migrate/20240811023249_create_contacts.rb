class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :zip_code
      t.string :source
      t.string :contact_type
      t.timestamps
    end
  end
end
