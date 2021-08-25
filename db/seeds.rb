# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


response = FoodQuery.create(response: "In two apples, there are 16.7 mg of Vitamin C. This amount covers 20.0% of your daily needs of Vitamin C.")
beef = Category.create(name: "Beef", cuisine: "American", diet: "", intolerances: "", excludeingredients: "")
vegan = Category.create(name: "vegan", cuisine: "", diet: "vegan", intolerances: "egg", excludeingredients: "")

Food.create(recipe_api_id: "1101225", title: "Herb Crusted Pork Rib Roast", ready_in_minutes: "165", servings: "8") 

Recipe.create(description: "The recipe Herb Crusted Pork Rib Roast can be made <b>in approximately 1 hour and 10 minutes</b>. Watching your figure? This dairy free recipe has <b>368 calories</b>, <b>32g of protein</b>, and <b>21g of fat</b> per serving. For <b>$1.23 per serving</b>, this recipe <b>covers 20%</b> of your daily requirements of vitamins and minerals. This recipe serves 8. If you have pork rib roast, dijon mustard, coarse ground pepper, and a few other ingredients on hand, you can make it. 1 person has tried and liked this recipe. It is perfect for <b>valentin day</b>. It is brought to you by Dinner, then Dessert. Only a few people really liked this main course. All things considered, we decided this recipe <b>deserves a spoonacular score of 0%</b>. This score is improvable. Similar recipes include Herb-Crusted Standing Rib Roast Herb Crusted Rib Eye Roast and Herb Crusted Prime Rib", directions: "Instructions Note: click on times in the instructions to start a kitchen timer while cooking. Preheat the oven to 500 degrees and place the pork roast in a large roasting pan. Rub the pork roast with the salt, pepper and rub the top with dijon mustard. In a medium bowl mix the oil, garlic, thyme, rosemary and breadcrumbs and pat it onto the top of the pork roast. Roast the pork for 15 minutes. Lower the temperature to 350 degrees and cook for an additional 45 minutes or until a meat thermometer in the thickest part of the roast reads 145 degrees. Remove from the oven and let rest (loosely covered) the pork to a cutting board and let stand for 15 minutes.", ingredients: "prime rib, salt, pepper")

