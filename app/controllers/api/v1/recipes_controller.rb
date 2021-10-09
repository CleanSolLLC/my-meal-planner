class Api::V1::RecipesController < ApplicationController
 
  def index
  	recipes = Recipe.all
    render json: RecipeSerializer.new(recipes) 
  end

  def create
    recipe_array = []
    params[:results].each do |recipe_params|
      r = recipe_params.except(:id)
      recipe = Recipe.create(recipe_params(r))
      recipe_array.push(recipe)
    end
    render json: RecipeSerializer.new(recipe_array)
  end

  def destroy
    recipe = Recipe.find_by(id: params[:id])

    if recipe.nil?
      render json: {error: "Recipe Not Found", status: :unprocessable_entity}
    else
      recipe.destroy
      render json: recipe
    end    

  end


  private
    def recipe_params(r)
      r.permit(:title, :readyInMinutes, :servings, :sourceUrl, :image, :openLicense, :category_id, category_id: [] )
    end

end
