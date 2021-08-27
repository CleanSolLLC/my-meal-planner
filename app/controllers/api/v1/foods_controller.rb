class Api::V1::FoodsController < ApplicationController

  def index
  	foods = Food.all
  	#render json: foods
    render json: FoodSerializer.new(foods) 
  end

  def create
    food = Food.new(food_params)
    if food.save
      render json: food, status: :accepted
    else
      render json: {errors: food.errors.full_messages, status: :unprocessable_entity}
    end
  end

  def show
    food = Food.find_by(id: params[:id])

    if food.nil?
      render json: {error: "Food Not Found", status: :unprocessable_entity}
    else
      render json: food 
    end

  end

  def delete
    food = Food.find_by(id: params[:id])

    if food.nil?
      render json: {error: "Food Not Found", status: :unprocessable_entity}
    else
      food.destroy
    end    

  end


  private
    def food_params
      require(:food).permit(:recipe_api_id, :title, :ready_in_minutes, :servings)
    end	
end
