class BambooPlants::CLI 
  
  #def start is an instance method
  def call 
    
    puts "\nWelcome to Lewis Bamboo!\n".red.bold
    puts "Check out our list of our bamboo plants with the number of choices within each category."
    #get_categories
    bamboo_categories
    get_bamboo_category
    display_categories_items
    #get_types
    #bamboo_types
    #get_bamboo_type
  end  
  
    # def get_categories
    #  @category = BambooPlants::Category.all
    # end
  
    def bamboo_categories
      BambooPlants::Category.all.each.with_index(1) do |category, index|
    #  @categories.each.with_index(1) do |category, index|
        puts "#{index}. #{category.name}"
          # adding a category number instead of typing category name
       end
   end 
   
    def get_bamboo_category
      puts "\nChoose a category by number to see types of bamboo:".blue.bold
      input = gets.strip.to_i  # represents a number
      max_value = BambooPlants::Category.all.length  # max makes it more flexible when using the method for other list
      if input.between?(1,max_value) #valid input
        category = BambooPlants::Category.all[input - 1] 
        display_categories_items(category)
      else
        #not valid input
        puts "\nPlease put in a valid category number:".red.bold
        bamboo_categories
        get_bamboo_category
      end
    end
    
    def display_categories_items(category)
      BambooPlants::Scraper.scrape_types(category)
    end 
  
  #  def get_types(category)
   #   BambooPlants::Type.scrape_types(category)
    
  #  end
  
#    def bamboo_types
#      puts "\nNow choose a type of plant by number: \n".bold
#      @type.each.with_index(1) do |type, index|
#      puts "#{index}. #{type.name}"
      # adding a category number instead of typing category name
#    end
#  end  
#    def get_bamboo_type
#      chosen_category = gets.strip.to_i
#      show_types_for(chosen_category) if valid_input(chosen_category, @type)
#    end
  
#  def show_types_for(chosen_category)
#    category = @category[chosen_category - 1]
#    category.get_types
#    puts "Here are the types of bamboo plants for #{category.name}"
#    category.types.each.with_index(1) do |type|
#      puts type.name
#    end
#end
  
     # def valid_input(input, data)
   # input.to_i <= data.length && input.to_i > 0
  # end
   
   
end
