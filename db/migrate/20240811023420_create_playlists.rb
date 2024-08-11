class CreatePlaylists < ActiveRecord::Migration[7.1]
  def change
    create_table :playlists do |t|
      t.string :title
      t.text :playlist_about
      t.string :cover_image
      t.timestamps
    end
  end
end
