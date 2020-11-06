# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ingredients_list = ['apple', 'sugar', 'tonic water', 'brown sugar', 'rice', 'carrots']
ingredients_list.each do |name|
  Ingredient.create(name: name)
end

recipes_list = ['first recipe', 'second recipe']
recipes_list.each do |name|
  Recipe.create(name: name)
end

steps = [
  [
    1, # recipe_id
    1, # ingredient_id 
    1, # step number
    '1 gram' # amount 
  ],
  [
    1, # recipe_id
    2, # ingredient_id 
    2, # step number
    '11 grams' # amount 
  ],
  [
    1, # recipe_id
    5, # ingredient_id 
    3, # step number
    '3 oz.' # amount 
  ],
]

steps.each do |step|
  Step.create(recipe_id: step[0], ingredient_id: step[1], step_number: step[2], amount: step[3])
end