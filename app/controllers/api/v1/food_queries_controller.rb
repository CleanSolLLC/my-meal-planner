class Api::V1::FoodQueriesController < ApplicationController
  
  def index
  	food_queries = FoodQuery.all
  	#render json: food_queries
    render json: FoodQuerySerializer.new(food_queries) 
  end

  def create
    food_query = FoodQuery.new(food_query_params)
    if food_query.save
      render json: food_query, status: :accepted
    else
      render json: {errors: food_query.errors.full_messages, status: :unprocessable_entity}
    end
  end

  def show
    food_query = FoodQuery.find_by(id: params[:id])

    if food_query.nil?
      render json: {error: "Query Not Found", status: :unprocessable_entity}
    else
      render json: food_query 
    end

  end

  def delete
    food_query = FoodQuery.find_by(id: params[:id])

    if food_query.nil?
      render json: {error: "Query Not Found", status: :unprocessable_entity}
    else
      food_query.destroy
    end    

  end


  private
    def food_query_params
      require(:food_query).permit(:search, :response)
    end	
end
