require_relative "food_methods.rb"
foodMethods = FoodMethods.new

get_all_user_input = false
until get_all_user_input do
    puts "What would you like to do:\n1. Add new food items\n2. Delete food items\n3. Show menu\n4. Type 'exit' to exit\n\n"
    user_input = gets.chomp.downcase

    case user_input
    when user_input = "1"        
        foodMethods.add_food
    when user_input = "2"        
        foodMethods.delete_food
    when user_input = "3"
        foodMethods.show_menu
    when user_input = "exit"
        get_all_user_input = true
    else
        puts Rainbow("\nThat is not a valid input!\n\n").bright.fg(:deeppink)
    end
end