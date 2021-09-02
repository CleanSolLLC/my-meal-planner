class FoodQuery < ApplicationRecord

	validates :response, presence: true
  #we are checking to see if there is an instance of the string persisted to the database. If there is return a msg staing that states that (food_query.search) the query already exists and to select another search criteria.

  def self.check(obj)
  	food = FoodQuery.find_by(search: obj[:search])
  	if food.nil?
  		search = obj[:search]
  		obj.response = call_api(search)

  		if obj.response.nil?
  		   obj.errors.add(:errors, "No Data Matched Your Query")
  		end 
  	
  	else
  		obj.errors.add(:errors, "Duplicate query please try again")
  	end
  	
		return obj
  end

  def self.call_api(string)
 
		require 'net/http'
		require 'openssl'
	
			url_first = "https://webknox-recipes.p.rapidapi.com/recipes/quickAnswer?q="
			url_second = URI::encode(string)
			url_string = url_first + url_second
	
			url = URI(url_string)
			
			http = Net::HTTP.new(url.host, url.port)
			http.use_ssl = true
			http.verify_mode = OpenSSL::SSL::VERIFY_NONE
			
			request = Net::HTTP::Get.new(url)
			request["x-rapidapi-host"] = ENV['HOST']
			request["x-rapidapi-key"] = ENV['KEY']
	
			response = http.request(request)
			ans = JSON.parse(response.read_body)
  		ans["answer"]
  end

end