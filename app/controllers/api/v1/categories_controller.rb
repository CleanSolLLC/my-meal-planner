class Api::V1::CategoriesController < ApplicationController

  def index
  	categories = Category.all
    render json: CategorySerializer.new(categories) 
  end

  def create
    category = Category.new(category_params)
    if category.save
      redirect_to api_v1_category_path(category)
    else
      render json: {errors: category.errors.full_messages, status: :unprocessable_entity}
    end
  end

  def delete
    category = Category.find_by(id: params[:id])

    if category.nil?
      render json: {error: "Category Not Found", status: :unprocessable_entity}
    else
      category.destroy
    end    

  end


  private
    def category_params
      params.require(:category).permit(:recipe_type, :query, :cuisine, :diet, :intolerances, :exclude)
    end	
end
