# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
RecipeIngredient.destroy_all
UserIngredient.destroy_all
User.destroy_all
Ingredient.destroy_all
Recipe.destroy_all

jake = User.create(name: "Jake")
tammy = User.create(name: "Tammy")

steak = Recipe.create(name: "Steak", user_id: jake.id)
salad = Recipe.create(name: "Salad", user_id: tammy.id)
### 
pb_soup = Recipe.create(name: "Peanut Butter Soup", user: jake)

pb = Ingredient.create(name: "peanut butter")
water = Ingredient.create(name: "water")

RecipeIngredient.create(recipe_id: steak.id, ingredient_id: water.id )
RecipeIngredient.create(recipe: pb_soup, ingredient: pb )

UserIngredient.create(user: tammy, ingredient: pb)