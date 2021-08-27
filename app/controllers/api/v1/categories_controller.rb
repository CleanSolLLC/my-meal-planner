class Api::V1::CategoriesController < ApplicationController

  def index
  	categories = Category.all
  	#render json: categories
    render json: CategorySerializer.new(categories) 
  end

  def create
    category = Category.new(category_params)
    if category.save
      render json: category, status: :accepted
    else
      render json: {errors: category.errors.full_messages, status: :unprocessable_entity}
    end
  end

  def show
    category = Category.find_by(id: params[:id])

    if category.nil?
      render json: {error: "Category Not Found", status: :unprocessable_entity}
    else
      render json: category 
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
      require(:category).permit(:meal, :exclude)
    end	
end
