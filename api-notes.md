# My-Meal-Planner

1. Front end (Javascript) will make a fetch request to Rails 
2. Rails will make an api call to RapidAPI https://rapidapi.com/webknox/api/recipe/

## EXAMPLE 1 ANSWER a nutrition related natural language question. 
  e.g How much vitamin c is in 2 apples?

  //QUERY --> HTTP VERB GET
  Answer
  
--- QUERY   
    q (The nutrition related question) - string required

--- CODE
   	 require 'uri'
   	 require 'net/http'
   	 require 'openssl'
   	 
   	 url = URI("https://webknox-recipes.p.rapidapi.com/recipes/quickAnswer?q=How%20much%20vitamin%20c%20is%20in%202%20apples%3F")
   	 
   	 http = Net::HTTP.new(url.host, url.port)
   	 http.use_ssl = true
   	 http.verify_mode = OpenSSL::SSL::VERIFY_NONE
   	 
   	 request = Net::HTTP::Get.new(url)
   	 request["x-rapidapi-host"] = ''
   	 request["x-rapidapi-key"] = ''
   	 
   	 response = http.request(request)
   	 puts response.read_body
  
  
  --- OUTPUT BODY
  	  {2 items
  	  "answer":"In two apples, there are 16.7 mg of Vitamin C. This amount covers 20.0% of your daily needs of Vitamin C."
  	  "image":"http://spoonacular.com/cdn/ingredients_100x100/apple.jpg"
  	  }
    


## EXAMPLE 2 SEARCH RECIPES
  //QUERY --> HTTP VERB GET
  Search Recipes

--- QUERY   
    query (recipe name/type) - string required
    offset (number of results to skip) - number optionl
    number (results returned between 0-100) - number optional
    type 
          (The type of the recipes. One of the following: main course, side dish, dessert, appetizer, salad, bread, breakfast, soup, beverage, sauce, or drink.) - string optional
    cuisine 
          (The cuisine(s) of the recipes. One or more (comma separated) of the following: african, chinese, japanese, korean, vietnamese,thai, indian, british, irish, french, italian, mexican, spanish, middle eastern, jewish, american, cajun, southern, greek,german, nordic, eastern european, caribbean, or latin american.) - string optional
    diet
          (The diet to which the recipes must be compliant. Possible values are: pescetarian, lacto vegetarian, ovo vegetarian, vegan, and vegetarian.) string - optional
    intolerances
          (A comma-separated list of intolerances. All found recipes must not have ingredients that could cause problems for people with one of the given tolerances. Possible values are: dairy, egg, gluten, peanut, sesame, seafood, shellfish, soy, sulfite, tree nut, and wheat.) string - optional
    excludeingredients
          (An comma-separated list of ingredients or ingredient types that must not be contained in the recipes.) string - optional


--- CODE
    require 'uri'
    require 'net/http'
    require 'openssl'
    url = URI("https://webknox-recipes.p.rapidapi.com/recipes/search?query=beef&offset=0&number=2&type=main%20course")
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-host"] = ''
    request["x-rapidapi-key"] = ''
    response = http.request(request)
    puts response.read_body

--- OUTPUT
   {7 items
   "results":[2 items
   0:{7 items
   "id":93877
   "title":"Beef Enchiladas"
   "readyInMinutes":45
   "servings":6
   "sourceUrl":"http://www.marthastewart.com/344471/beef-enchiladas"
   "openLicense":0
   "image":"beef-enchiladas-2-93877.png"
   }
   1:{7 items
   "id":278914
   "title":"Basil Beef"
   "readyInMinutes":52
   "servings":6
   "sourceUrl":"http://www.kraftrecipes.com/recipes/basil-beef-56551.aspx"
   "openLicense":0
   "image":"basil-beef-278914.jpg"
   }
   ]
   "baseUri":"https://spoonacular.com/recipeImages/"
   "offset":0
   "number":2
   "totalResults":875
   "processingTimeMs":369
   "expires":1630004813515
   }


## EXAMPLE 3 RECIPE INFORMATION
  e.g How much vitamin c is in 2 apples?

  //QUERY --> HTTP VERB GET
  recipe information
  
--- QUERY   
    id (The id of the recipe) - string required


--- OUTPUT
   {36 items
   "vegetarian":false
   "vegan":false
   "glutenFree":true
   "dairyFree":true
   "veryHealthy":false
   "cheap":false
   "veryPopular":false
   "sustainable":false
   "weightWatcherSmartPoints":3
   "gaps":"no"
   "lowFodmap":false
   "preparationMinutes":10
   "cookingMinutes":42
   "aggregateLikes":0
   "spoonacularScore":65
   "healthScore":25
   "creditsText":"Kraft Recipes"
   "sourceName":"Kraft Recipes"
   "pricePerServing":169.54
   "extendedIngredients":[7 items
   0:{14 items
   "id":2003
   "aisle":"Spices and Seasonings"
   "image":"basil.jpg"
   "consistency":"solid"
   "name":"dried basil leaves"
   "nameClean":"dried basil"
   "original":"1 Tbsp. dried basil leaves, crushed"
   "originalString":"1 Tbsp. dried basil leaves, crushed"
   "originalName":"dried basil leaves, crushed"
   "amount":1
   "unit":"Tbsp"
   "meta":[...]2 items
   "metaInformation":[...]2 items
   "measures":{...}2 items
   }

   rest of the ingredients
    1:{...}14 items
    2:{...}14 items
    3:{...}14 items
    4:{...}14 items
    5:{...}14 items
    6:{...}14 items
    ]
  "id":278914
  "title":"Basil Beef"
  "readyInMinutes":52
  "servings":6
  "sourceUrl":"http://www.kraftrecipes.com/recipes/basil-beef-56551.aspx"
  "image":"https://spoonacular.com/recipeImages/278914-556x370.jpg"
  "imageType":"jpg"
  "summary":"You can never have too many main course recipes, so give Basil Beef a try. This recipe serves 6 and costs $1.7 per serving. One serving contains <b>133 calories</b>, <b>18g of protein</b>, and <b>3g of fat</b>. Not a lot of people made this recipe, and 1 would say it hit the spot. If you have a.1. bold & spicy sauce, mint flakes, garlic, and a few other ingredients on hand, you can make it. To use up the mint you could follow this main course with the <a href="https://spoonacular.com/recipes/mint-brownies-122695">Mint Brownies</a> as a dessert. All things considered, we decided this recipe <b>deserves a spoonacular score of 67%</b>. This score is solid. Try <a href="https://spoonacular.com/recipes/beef-tenderloin-with-basil-crema-with-watermelon-basil-salad-and-grilled-plantains-743524">Beef Tenderloin with Basil Crema with Watermelon-Basil Salad and Grilled Plantains</a>, <a href="https://spoonacular.com/recipes/thai-beef-with-basil-230712">Thai Beef with Basil</a>, and <a href="https://spoonacular.com/recipes/asian-beef-with-basil-313503">Asian Beef with Basil</a> for similar recipes."
  "cuisines":[]0 items
  "dishTypes":[4 items
  0:"lunch"
  1:"main course"
  2:"main dish"
  3:"dinner"
  ]
  "diets":[2 items
  0:"gluten free"
  1:"dairy free"
  ]
  "occasions":[]0 items
  "winePairing":{}0 items
  "instructions":"Mix steak sauce, lime zest, juice, garlic, basil, mint and ginger. Place steak in nonmetal dish or resealable plastic bag. Add steak sauce mixture; turn steak to evenly coat both sides. Cover. Refrigerate 30 min. to marinate. Preheat grill to medium-high heat. Remove steak from marinade; discard marinade. Grill steak 4 to 6 min. on each side or until cooked through."
  "analyzedInstructions":[1 item
  0:{2 items
  "name":""
  "steps":[6 items
  0:{4 items
  "number":1
  "step":"Mix steak sauce, lime zest, juice, garlic, basil, mint and ginger."
  "ingredients":[...]7 items
  "equipment":[]0 items
  }
  1:{...}4 items
  2:{...}5 items
  3:{...}4 items
  4:{...}4 items
  5:{...}5 items
  ]
  }
  ]
  "originalId":NULL
  }



=== CODE
  require 'uri'
  require 'net/http'
  require 'openssl'
  
  url = URI("https://webknox-recipes.p.rapidapi.com/recipes/278914/information")
  
  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE
  
  request = Net::HTTP::Get.new(url)
  request["x-rapidapi-host"] = ''
  request["x-rapidapi-key"] = ''
  
  response = http.request(request)
  puts response.read_body






