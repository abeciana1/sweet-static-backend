class CreateSongs < ActiveRecord::Migration[7.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :album
      t.string :artist
      t.string :bandcamp_stream_url
      t.integer :playlist_id
      t.timestamps
    end
  end
end
