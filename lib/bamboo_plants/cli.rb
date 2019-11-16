class BambooPlants::CLI 
  
  #def start is an instance method
  def call 
    
    puts "\nWelcome to Lewis Bamboo!\n".red.bold
    puts "Check out our list of our bamboo plants with the number of choices within each category."
    get_categories
    bamboo_categories
  #get_bamboo_category
  # get_bamboo_type
  end  
  
    def get_categories
      @category = BambooPlants::Category.all
    end
  
    def bamboo_categories
      puts "\nChoose a bamboo plant category number: \n".bold
      @category.each.with_index(1) do |category, index|
        puts "#{index}. #{category.name}"
      # adding a category number instead of typing category name
    end
    
end
  
  #def get_categories
   # @category = BambooPlants::Category.all
  #end
  
    #def list_plants
     # puts 'Choose a category number to see types of bamboo:'
     # @category.each.with_index(1) do |category, index|
     #   puts "#{index}. #{category.name}"
   # end

  
#  def get_bamboo_category
  #  chosen_category = gets.strip.to_i
  #  show_types_for(chosen_category) if valid_input(chosen_category, @category)
  #  end
  
 # def valid_input(input, data)
#    input.to_i <= data.length && input.to_i > 0
 # end
  
  #def show_types_for(chosen_category)
   # category = @category[chosen_category - 1]
    # BambooPlants::Type.new("Types of Plants", category)
    # BambooPlants::Type.new("NO Types of Plants", category)
    #category.get_types
   # puts "Here are types for #{category.name}"
   # category.types.each.with_index(1) do |type, idx|
    #  puts "#{idx}. #{type.name}"
   # end
end
