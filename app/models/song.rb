class Song < ApplicationRecord
    belongs_to :playlist
    has_many :song_analytics, dependent: :destroy
end
