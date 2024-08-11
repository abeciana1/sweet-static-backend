FactoryBot.define do
  factory :song_analytic do
    interaction_type { %w[play pause skip].sample }
    duration_in_seconds { Faker::Number.between(from: 1, to: 300) }
    last_interacted_at { Faker::Time.backward(days: 7) }
    interaction_result { Faker::Number.between(from: 0, to: 1) }
    association :song
  end
end
