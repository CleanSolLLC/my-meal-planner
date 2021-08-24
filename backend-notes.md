### Models

FoodQuery
    search:string
    response:string

Food
   recipe_api_id:string
   title:string 
   ready_in_minutes:string
   servings:string   

Category
    name:string
    cuisine:string
    diet:string
    intolerances:string
    excludeingredients:string


FoodCategory
    food_id:integer
    category_id:integer


Recipe
   food_id:integer
   description:string
   servings:strin
   ingredients:string
   directions:string


### Associations

```ruby
FoodQuery

Food
has_one :recipe

Recipe
belongs_to :Food
has_many :FoodCategories
has_many :Categories, through: :FoodCategories 

Category
has_many :FoodCategories
has_many :Foods, through: :FoodCategories 

```

### Seed Data

```ruby
response = FoodQuery.create(response: "In two apples, there are 16.7 mg of Vitamin C. This amount covers 20.0% of your daily needs of Vitamin C.")
beef = Category.create(name: "Beef", cuisine: "American", diet: "", intolerances: "", excludeingredients: "")
vegan = Category.create(name: "vegan", cuisine: "", diet: "vegan", intolerances: "egg", excludeingredients: "")

Food.create(recipe_api_id: "1101225", title: "Herb Crusted Pork Rib Roast", ready_in_minutes: "165", servings: "8") 

Recipe.create(description: "The recipe Herb Crusted Pork Rib Roast can be made <b>in approximately 1 hour and 10 minutes</b>. Watching your figure? This dairy free recipe has <b>368 calories</b>, <b>32g of protein</b>, and <b>21g of fat</b> per serving. For <b>$1.23 per serving</b>, this recipe <b>covers 20%</b> of your daily requirements of vitamins and minerals. This recipe serves 8. If you have pork rib roast, dijon mustard, coarse ground pepper, and a few other ingredients on hand, you can make it. 1 person has tried and liked this recipe. It is perfect for <b>valentin day</b>. It is brought to you by Dinner, then Dessert. Only a few people really liked this main course. All things considered, we decided this recipe <b>deserves a spoonacular score of 0%</b>. This score is improvable. Similar recipes include <a href="https://spoonacular.com/recipes/herb-crusted-standing-rib-roast-81703">Herb-Crusted Standing Rib Roast</a>, <a href="https://spoonacular.com/recipes/herb-crusted-rib-eye-roast-42505">Herb Crusted Rib Eye Roast</a>, and <a href="https://spoonacular.com/recipes/herb-crusted-prime-rib-roast-291159">Herb Crusted Prime Rib Roast</a>.", directions: "Instructions Note: click on times in the instructions to start a kitchen timer while cooking. Preheat the oven to 500 degrees and place the pork roast in a large roasting pan. Rub the pork roast with the salt, pepper and rub the top with dijon mustard. In a medium bowl mix the oil, garlic, thyme, rosemary and breadcrumbs and pat it onto the top of the pork roast. Roast the pork for 15 minutes. Lower the temperature to 350 degrees and cook for an additional 45 minutes or until a meat thermometer in the thickest part of the roast reads 145 degrees. Remove from the oven and let rest (loosely covered) the pork to a cutting board and let stand for 15 minutes.", ingredients: "prime rib, salt, pepper")

# source: https://en.wikipedia.org/wiki/African_art
```

### Stretch Goals
- Authentication + Authorization
    - User
      - name
      - email
      - password_digest
    
- Build out Recipes features (projects, keywords, learning goals, required resources, etc.)

### Stretch Goals Seed Data

```ruby
mark = User.create(name: "Mark", email: "mark@abc123.com", password: "mark@abc123.com")
jane = User.create(name: "jane", email: "jane@abc123.com", password: "jane@abc123.com")
tim  = User.create(name: "tim",  email: "tim@abc123.com",  password: "tim@abc123.com") 
```