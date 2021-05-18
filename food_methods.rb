require 'json'
require 'terminal-table'

# data_hash['books']['1'] = 'I, Robot'
# data_hash['books']['2'] = 'The Caves of Steel'

puts @data_hash

class FoodMethods
    def get_all_data_hash
        file = File.read('menu/menu2.json')
        @data_hash = JSON.parse(file)
    end

    def add_food
        self.get_all_data_hash
        getAllUserInput = false
        until getAllUserInput do
            newfood = {}
            puts "New food name"
            newfood["name"] = gets.chomp
            puts "Price for new food"
            newfood["price"] = gets.chomp

            @data_hash << newfood
            puts @data_hash
            
            puts "Would you like to add more food?"
            verifystep = gets.chomp
            if verifystep.downcase[0] == "n"
                getAllUserInput = true
            end
        end
        File.write('menu/menu2.json', JSON.dump(@data_hash))
    end

    def delete_food
        self.get_all_data_hash

        puts "These are all of the items you can delete: \n#{@data_hash}"

        puts "Type the name of the food you want to delete"
        foodName = gets.chomp

        @data_hash.delete_if {|element| element["name"] == foodName}
        File.write('menu/menu2.json', JSON.dump(@data_hash))
    end    

    def show_menu
        self.get_all_data_hash
        
        rows = []
        @data_hash.each do |hash|
            rows << [hash["name"], hash["price"]]
        end
        
        table = Terminal::Table.new :title => "MENU", :headings => ['Name','Price'], :rows => rows, 
        :style => {:width => 80, :alignment => :center, :border_x => "=", :border_i => "x"}

        puts table
    end
end