require 'rails_helper'

RSpec.describe "Devise User", :type => :system do
  let(:user) { FactoryBot.create(:user, email: "adrian@example.com", password: "secret") }

  it "registers successfully" do
    visit new_user_registration_path

    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    fill_in "Password confirmation", with: user.password
    click_button "Sign up"

    user.confirm

    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Log in"
    
    expect(page).to have_text(I18n.t("devise.sessions.signed_in"))
  end
end
