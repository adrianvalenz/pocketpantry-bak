def login_user
  login_as(FactoryBot.create(:user, confirmed_at: Time.now))
end
