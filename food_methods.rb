require 'json'

# data_hash['books']['1'] = 'I, Robot'
# data_hash['books']['2'] = 'The Caves of Steel'
file = File.read('menu/menu2.json')
@data_hash = JSON.parse(file)
puts @data_hash

class FoodMethods
    def add_food
        # items = []
        # getAllUserInput = false
        # until getAllUserInput do
        #     newfood = {}
        #     puts "New food name"
        #     newfood["name"] = gets.chomp
        #     puts "Price for new food"
        #     newfood["price"] = gets.chomp

        #     @data_hash.merge(newfood)
    
        #     items << newfood
            
        #     puts "Would you like to add more food?"
        #     verifystep = gets.chomp
        #     if verifystep.downcase[0] == "n"
        #         getAllUserInput = true
        #     end
        # end
        # push = JSON.load(items)
        # File.write('menu/menu2.json', JSON.dump(push))
    end

    def delete_food
        puts "These are all of the items you can delete: \n#{@data_hash}"

        foodName = gets.chomp

        @data_hash.delete_if {|element| element["name"] == foodName}
        File.write('menu/menu2.json', JSON.dump(@data_hash))
    end    
end