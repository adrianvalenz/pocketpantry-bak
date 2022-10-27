require 'rails_helper'

RSpec.describe "User", :type => :system do
  it "navigates to dashboard" do
    login_user
    visit dashboard_path
    expect(page).to have_text("dashboard")
  end

  it "clicks on recipes" do
    login_user
    visit dashboard_path
    click_link "recipes-link"
    expect(page).to have_text(I18n.t("dashboard.recipes.index_title"))
  end

  it "creates new recipe" do
  end

  it "updates recipe" do
  end

  it "deletes recipe" do
  end
end
