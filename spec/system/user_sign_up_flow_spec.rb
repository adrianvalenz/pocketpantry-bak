require 'rails_helper'

RSpec.describe "Devise User", :type => :system do

  it "logs in successfully" do
    user = FactoryBot.create(:user, email: "adrian@example.com", password: "secret")
    user.confirm

    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Log in"
    
    expect(page).to have_text(I18n.t("devise.sessions.signed_in"))
  end

  it "enters invalid credentials" do
    user = FactoryBot.create(:user, email: "adrian@example.com", password: "secret")
    
    visit new_user_session_path

    fill_in "Email", with: user.email
    fill_in "Password", with: "notsecret"
    click_button "Log in"

    expect(page).to have_text(I18n.t("devise.failure.invalid", authentication_keys: "Email"))
  end

  it "logs out" do
    user = FactoryBot.create(:user, :email: "adrian@example.com", password: "secret")

    visit root_path
    click_link "sign-out-link"

    # expect(page).to have_text(I18n.t("devise.x.x"))
  end
end
