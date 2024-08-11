FactoryBot.define do
  factory :song do
    title { Faker::Music::GratefulDead.song }
    album { Faker::Music.album }
    artist { Faker::Music.band }
    bandcamp_stream_url { Faker::Internet.url }
    association :playlist
  end
end
