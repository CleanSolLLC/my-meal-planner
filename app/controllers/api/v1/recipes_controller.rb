class Api::V1::RecipesController < ApplicationController
 
  def index
  	recipes = Recipe.all
  	render json: recipes 
  end

  def create
    recipe = Recipe.new(recipe_params)
    if recipe.save
      render json: recipe, status: :accepted
    else
      render json: {errors: recipe.errors.full_messages}, status: :unprocessable_entity}
    end

  def show
    recipe = Recipe.find_by(id: params[:id}])

    if recipe.nil?
      render json: {error: "Recipe Not Found"}, status: :unprocessable_entity}
    else
      render json: recipe 
    end

  end

  def delete
    recipe = Recipe.find_by(id: params[:id}])

    if recipe.nil?
      render json: {error: "Recipe Not Found"}, status: :unprocessable_entity}
    else
      recipe.destroy
    end    

  end


  private
    def recipe_params
      require(:recipe).permit(:food_id, :description, :servings, :ingredients, :directions)
    end
end
