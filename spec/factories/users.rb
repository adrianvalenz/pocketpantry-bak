FactoryBot.define do
  factory :user do
    sequence(:email) { |i| "user_#{i}@example.com" }
    password { "secret" }
    # password_confirmation { "secret" }
    confirmed_at { Time.now }
  end
end
