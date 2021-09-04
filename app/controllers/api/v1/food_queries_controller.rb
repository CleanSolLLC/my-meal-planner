class Api::V1::FoodQueriesController < ApplicationController
  
  def index
  	food_queries = FoodQuery.all
  	#render json: food_queries
    render json: FoodQuerySerializer.new(food_queries) 
  end

  def create
    food_query = FoodQuery.new(food_query_params)
    
    obj = FoodQuery.check(food_query)
    error = obj.errors.first.type if !obj.errors.empty?
    
    if obj.save
      render json: obj, status: :accepted
    else
      render json: {error: error}
    end
  end


  def destroy
    food_query = FoodQuery.find_by(id: params[:id])

    if food_query.nil?
      render json: {error: "Query Not Found", status: :unprocessable_entity}
    else
      food_query.destroy
      render json: food_query
    end    

  end


  private
    def food_query_params
      params.require(:food_query).permit(:search, :response)
    end	
end
