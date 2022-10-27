require 'rails_helper'

RSpec.describe "User", :type => :system do
  let(:user) { FactoryBot.create(:user) }
  
  before do
    login_as(user, scope: :user)
  end

  it "navigates to dashboard" do
    visit dashboard_path
    expect(page).to have_text("dashboard")
  end

  it "clicks on recipes" do
    visit dashboard_path
    click_link "recipes-link"
    expect(page).to have_text(I18n.t("dashboard.recipes.views.index.title"))
  end

  it "has no recipes" do
    user.recipes.destroy_all
    visit dashboard_recipes_path
    expect(page).to have_text(I18n.t("dashboard.recipes.messages.no_recipes"))
  end

  it "lists existing recipes" do
    recipe = FactoryBot.create(:recipe, user: user)
    visit dashboard_recipes_path
    expect(page).to have_text(recipe.name)
  end

  it "creates new recipe" do
  end

  xit "updates recipe" do
  end

  xit "deletes recipe" do
  end
end
