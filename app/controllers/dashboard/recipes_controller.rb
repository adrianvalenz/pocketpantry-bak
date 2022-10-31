class Dashboard::RecipesController < DashboardController
  before_action :set_recipe, only: %i[ show edit update destroy ]

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
        flash.now[:notice] = "Recipe was created."
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    @recipes = current_user.recipes.all.reverse_order

    respond_to do |format|
      if @recipe.update(recipe_params)
        format.turbo_stream
        format.html { redirect_to dashboard_recipes_path, notice: 'Recipe was updated' }
        flash.now[:notice] = "Recipe was updated."
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @recipes = current_user.recipes.all.reverse_order
    @recipe.destroy
    flash.now[:alert] = "Recipe was deleted"
  end

  private
  def set_recipe
    @recipe = current_user.recipes.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :main_image, :instructions)
  end
end
