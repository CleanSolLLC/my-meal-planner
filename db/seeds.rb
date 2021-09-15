
FoodQuery.destroy_all
Category.destroy_all
Recipe.destroy_all



FoodQuery.create(search: "Carbs in potato chips", response: "In a small bag of potato chips there are 20 g of carbohydrates. This amount covers 0% of your daily needs.")
FoodQuery.create(search: "How much Vitamin C does two apples have?", response: "In two apples, there are 16.7 mg of Vitamin C. This amount covers 20.0% of your daily needs of Vitamin C.")
FoodQuery.create(search: "Protein in pork", response: "In pork there is 20 grams of protein . This amount covers 20.0% of your daily needs of protein.")

Category.create(meal_types: "beef" "american", exclusions: "gluten")
Category.create(meal_types: "vegan", exclusions: "")
Category.create(meal_types: "breakfast", exclusions: "dairy nuts")


Recipe.create(recipe_api_id: "1101225", title: "Herb Crustaed Pork Rib Roast", ready_in_minutes: "165", servings: "8", source_url: "www.mytest.com", image: "my-image.jpg", category_id: 1) 


