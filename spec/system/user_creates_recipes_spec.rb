require 'rails_helper'

RSpec.describe "User", :type => :system do
  it "navigates to dashboard recipes" do
    login_user
    visit dashboard_path
    expect(page).to have_text("dashboard")
  end

  it "clicks on new recipes" do
  end

  it "creates new recipe" do
  end

  it "updates recipe" do
  end

  it "deletes recipe" do
  end
end
