class Dashboard::RecipesController < DashboardController
  def index
    @recipes = current_user.recipes.all
  end

  def show
  end

  def edit
  end

  def new
  end
end
