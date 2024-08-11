FactoryBot.define do
  factory :playlist do
    title { Faker::Music.genre }
    playlist_about { Faker::Lorem.paragraph }
    cover_image { Faker::Internet.url }
  end
end
