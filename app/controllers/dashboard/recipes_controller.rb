class Dashboard::RecipesController < DashboardController
  before_action :set_recipe, only: %i[ show ]

  def index
    @recipes = current_user.recipes.all.reverse_order
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipes = current_user.recipes.all.reverse_order
    @recipe = current_user.recipes.build(recipe_params)

    respond_to do |format|
      if @recipe.save
        format.turbo_stream
        format.html { redirect_to dashboard_recipes_path, notice: 'Recipe was created!' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private
  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name)
  end
end
