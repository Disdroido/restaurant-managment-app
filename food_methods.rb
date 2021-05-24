require 'json'
require 'terminal-table'
require 'rainbow'

# data_hash['books']['1'] = 'I, Robot'
# data_hash['books']['2'] = 'The Caves of Steel'

class FoodMethods
    def get_all_data_hash
        file = File.read('menu/menu.json')
        @data_hash = JSON.parse(file)
    end

    def add_food
        system("clear") || system("cls")

        self.get_all_data_hash
        get_all_user_input = false
        until get_all_user_input do
            newfood = {}
            puts "\nNew food name"
            newfood["name"] = gets.chomp
            print "\nShort description for new food " 
            print Rainbow("( max 8 words )\n").bright.fg(:deeppink)
            newfood["description"] = gets.chomp
            print "\nIngredients that have alergenic properties in the new food "
            print Rainbow("( yes / no )\n").bright.fg(:deeppink)
            newfood["allergies"] = gets.chomp
            puts "\nPrice for new food"
            newfood["price"] = gets.chomp

            @data_hash << newfood
            rows = []
            @data_hash.each do |hash|
                rows << [hash["name"], hash["description"], hash["allergies"], hash["price"]]
            end

            table = Rainbow(Terminal::Table.new :title => "MENU", :headings => ['Name', 'Description', 'Allergies', 'Price'], 
                :rows => rows, 
                :style => {:width => 100, :alignment => :center, :border_x => "=", :border_i => "x"}).bright.fg(:mediumpurple)

            puts "\n#{table}\n\n"
            
            puts "Would you like to add more food?"
            verifystep = gets.chomp
            if verifystep.downcase[0] == "n"
                get_all_user_input = true
            end
        end
        File.write('menu/menu.json', JSON.dump(@data_hash))
    end

    def delete_food        
        self.get_all_data_hash
        get_all_user_input = false

        until get_all_user_input do
            system("clear") || system("cls")

            puts "These are all of the items you can delete: \n"

            rows = []
            @data_hash.each do |hash|
                rows << [hash["name"], hash["description"], hash["allergies"], hash["price"]]
            end

            table = Rainbow(Terminal::Table.new :title => "MENU", :headings => ['Name', 'Description', 'Allergies', 'Price'], 
                :rows => rows, 
                :style => {:width => 100, :alignment => :center, :border_x => "=", :border_i => "x"}).bright.fg(:mediumpurple)

            puts "\n#{table}\n\n"

            puts "Type the name of the food you want to delete\nOr type 'exit' if you want to exit"
            food_name = gets.chomp
            if food_name.downcase != "exit"

                puts Rainbow("\nAre you sure? ( yes / no )").bright.fg(:deeppink)
                confirmation = gets.chomp

                if confirmation.downcase == "yes"
                    @data_hash.delete_if {|element| element["name"] == food_name}
                    File.write('menu/menu.json', JSON.dump(@data_hash))
                elsif confirmation.downcase[0] == "no"
                    get_all_user_input = true
                end
            elsif food_name == "exit"
                get_all_user_input = true
            end
        end        
    end    

    def show_menu
        system("clear") || system("cls")

        self.get_all_data_hash
        puts @data_hash
        
        rows = []
        @data_hash.each do |hash|
            rows << [hash["name"], hash["description"], hash["allergies"], hash["price"]]
        end
        
        table = Rainbow(Terminal::Table.new :title => "MENU", :headings => ['Name', 'Description', 'Allergies', 'Price'], 
            :rows => rows, 
            :style => {:width => 100, :alignment => :center, :border_x => "=", :border_i => "x"}).bright.fg(:mediumpurple)

        puts "\n#{table}\n\n"
    end
end