FactoryBot.define do
  factory :user do
    sequence(:email) { |i| "user_#{i}@example.com" }
    password { "secret" }
    # password_confirmation { "secret" }
  end
end
