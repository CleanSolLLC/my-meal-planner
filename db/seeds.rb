
FoodQuery.destroy_all
Category.destroy_all
Recipe.destroy_all



FoodQuery.create(search: "Carbs in potato chips", response: "In a small bag of potato chips there are 20 g of carbohydrates. This amount covers 0% of your daily needs.")
FoodQuery.create(search: "How much Vitamin C does two apples have?", response: "In two apples, there are 16.7 mg of Vitamin C. This amount covers 20.0% of your daily needs of Vitamin C.")
FoodQuery.create(search: "Protein in pork", response: "In pork there is 20 grams of protein . This amount covers 20.0% of your daily needs of protein.")

Category.create(meal_types: "beef" "american", exclusions: "gluten")
Category.create(meal_types: "vegan", exclusions: "")
Category.create(meal_types: "breakfast", exclusions: "dairy nuts")


 Recipe.create(recipe_api_id: "93877", title: "Beef Enchiladas", ready_in_minutes: "45", servings: "6", source_url: "http://www.marthastewart.com/344471/beef-enchiladas", image: "beef-enchiladas-2-93877.png", category_id: 1) 

 Recipe.create(recipe_api_id: "278914", title: "Basil Beef", ready_in_minutes: "52", servings: "6", source_url: "http://www.kraftrecipes.com/recipes/basil-beef-56551.aspx", image: "beef-enchiladas-2-93877.png", category_id: 1) 
 
 Recipe.create(recipe_api_id: "93877", title: "Beef Enchiladas", ready_in_minutes: "45", servings: "6", source_url: "http://www.marthastewart.com/344471/beef-enchiladas", image: "beef-enchiladas-2-93877.png", category_id: 1) 

 Recipe.create(recipe_api_id: "278914", title: "Basil Beef", ready_in_minutes: "52", servings: "6", source_url: "http://www.kraftrecipes.com/recipes/basil-beef-56551.aspx", image: "beef-enchiladas-2-93877.png", category_id: 1) 


# //Test Data
# // const arry = [{"id": 93877,
# //    "title":"Beef Enchiladas",
# //    "readyInMinutes":45,
# //    "servings":6,
# //    "sourceUrl":"http://www.marthastewart.com/344471/beef-enchiladas",
# //    "openLicense":0,
# //    "image":"beef-enchiladas-2-93877.png"
# //    },
   
# //    {"id": 278914,
# //    "title":"Basil Beef",
# //    "readyInMinutes":52,
# //    "servings":6,
# //    "sourceUrl":"http://www.kraftrecipes.com/recipes/basil-beef-56551.aspx",
# //    "openLicense":0,
# //    "image":"basil-beef-278914.jpg"
# //    },

# //       {"id": 278914,
# //    "title":"Basil Beef",
# //    "readyInMinutes":52,
# //    "servings":6,
# //    "sourceUrl":"http://www.kraftrecipes.com/recipes/basil-beef-56551.aspx",
# //    "openLicense":0,
# //    "image":"basil-beef-278914.jpg"
# //    },

# //       {"id": 278914,
# //    "title":"Basil Beef",
# //    "readyInMinutes":52,
# //    "servings":6,
# //    "sourceUrl":"http://www.kraftrecipes.com/recipes/basil-beef-56551.aspx",
# //    "openLicense":0,
# //    "image":"basil-beef-278914.jpg"
# //    }
# // ]