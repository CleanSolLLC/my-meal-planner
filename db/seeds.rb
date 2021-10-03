
FoodQuery.destroy_all
Category.destroy_all
Recipe.destroy_all



FoodQuery.create(search: "Carbs in potato chips", response: "In a small bag of potato chips there are 20 g of carbohydrates. This amount covers 0% of your daily needs.")
FoodQuery.create(search: "How much Vitamin C does two apples have?", response: "In two apples, there are 16.7 mg of Vitamin C. This amount covers 20.0% of your daily needs of Vitamin C.")
FoodQuery.create(search: "Protein in pork", response: "In pork there is 20 grams of protein . This amount covers 20.0% of your daily needs of protein.")

Category.create(query: "Beef", recipe_type: "Main Course", cuisine: "American", diet: "vegan", intolerances: "gluten", exclude: "gluten")
Category.create(query: "Pork", recipe_type: "Breakfast", cuisine: "Greek", diet: "", intolerances: "gluten", exclude: "")
Category.create(query: "Pizza", recipe_type: "Appetizer", cuisine: "Italian", diet: "Vegetarian", intolerances: "Gluten", exclude: "Dairy, Nuts")


 Recipe.create(title: "Beef Enchiladas", readyInMinutes: "45", servings: "6", sourceUrl: "http://www.marthastewart.com/344471/beef-enchiladas", image: "beef-enchiladas-2-93877.png", category_id: 1, openLicense: 0) 

 Recipe.create(title: "Basil Beef", readyInMinutes: "52", servings: "6", sourceUrl: "http://www.kraftrecipes.com/recipes/basil-beef-56551.aspx", image: "beef-enchiladas-2-93877.png", category_id: 2, openLicense: 0) 
 
 Recipe.create(title: "Beef Enchiladas", readyInMinutes: "45", servings: "6", sourceUrl: "http://www.marthastewart.com/344471/beef-enchiladas", image: "beef-enchiladas-2-93877.png", category_id: 3, openLicense: 0) 

 Recipe.create(title: "Basil Beef", readyInMinutes: "52", servings: "6", sourceUrl: "http://www.kraftrecipes.com/recipes/basil-beef-56551.aspx", image: "beef-enchiladas-2-93877.png", category_id: 3, openLicense: 0) 


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