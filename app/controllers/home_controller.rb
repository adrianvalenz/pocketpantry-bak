class HomeController < ApplicationController
  def index
    @recipes = current_user.recipes.all
  end
end
