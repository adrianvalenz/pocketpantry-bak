FactoryBot.define do
  factory :recipe do
    name { Faker::Food.dish }
    user { nil }
  end
end
