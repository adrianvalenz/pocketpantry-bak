class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @recipes = current_user.recipes.all
  end
end
