require 'faker'

FactoryBot.define do
    factory :contact do
        name { Faker::Name.name }
        email { Faker::Internet.email }
        phone_number { Faker::PhoneNumber.phone_number }
        zip_code { Faker::Address.zip_code }
        source { Faker::Lorem.word }
        contact_type { %w[subscriber lead customer].sample }
    end
end
