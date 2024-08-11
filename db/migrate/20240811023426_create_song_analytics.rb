class CreateSongAnalytics < ActiveRecord::Migration[7.1]
  def change
    create_table :song_analytics do |t|
      t.string :interaction_type
      t.integer :duration_in_seconds
      t.datetime :last_interacted_at
      t.integer :interaction_result
      t.integer :song_id
      t.timestamps
    end
  end
end
