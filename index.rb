require_relative "food_methods.rb"
foodMethods = FoodMethods.new

puts "What would you like to do:\n1. Add new food items\n2. Delete food items\n3. Show menu"

userInput = gets.chomp.to_i

case userInput
when userInput = 1
    foodMethods.add_food
when userInput = 2
    foodMethods.delete_food
when userInput = 3
    foodMethods.show_menu
else

end