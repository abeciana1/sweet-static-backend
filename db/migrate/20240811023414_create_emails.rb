class CreateEmails < ActiveRecord::Migration[7.1]
  def change
    create_table :emails do |t|
      t.string :name
      t.string :preview_link, :default => ''
      t.string :subject
      t.text :body
      t.datetime :sent_at
      t.integer :contact_id
      t.timestamps
    end
  end
end
