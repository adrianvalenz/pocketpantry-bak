require 'rails_helper'

RSpec.describe "User sign up", :type => :system do
  let(:user) { FactoryBot.create(:user, email: "adrian@example.com", password: "secret") }

  it "logs in successfully" do
    # visit new_user_registration_path
    visit new_user_session_path

    fill_in "Email", with: user.email
    fill_in "Password", with: user.password

    click_button "Log in"
    login_as(user, :scope => :user)
    user.confirmed_at = Time.now
    user.save

    expect(page).to have_text("Signed in successfully.")
  end
end
