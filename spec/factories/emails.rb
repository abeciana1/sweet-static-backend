FactoryBot.define do
  factory :email do
    name { Faker::Lorem.sentence }
    preview_link { Faker::Internet.url }
    subject { Faker::Lorem.sentence }
    body { Faker::Lorem.paragraph }
    sent_at { Faker::Time.backward(days: 14, period: :evening) }
    association :contact
  end
end
