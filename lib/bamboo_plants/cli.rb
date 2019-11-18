class BambooPlants::CLI 
  
  #def start is an instance method
  def call 
    
    puts "\nWelcome to Lewis Bamboo!\n".red.bold
    puts "Check out our list of our bamboo plants with the number of choices within each category."
    get_categories
    list_bamboo_categories
    chosen_category
    categories = BambooPlants::Category.all
    

    end
    
    #respond to input
  def get_categories
    url = "https://lewisbamboo.com/category/bamboo-plants/"
    BambooPlants::Scraper.scrape_categories(url)
    @category = BambooPlants::Category.all
    end  
  
  def list_bamboo_categories
    @category.each.with_index(1) do |category, index|
      puts "#{index}. #{category.name}"
  end
  
  def chosen_category
    puts "\nChoose which category you would like to see:".on_blue.bold
    input = gets.strip.to_i  # represents a number
      max_value = BambooPlants::Category.all.length  # max makes it more flexible when using the method for other list
      
      if input.between?(1,max_value) #valid input
      
        category = BambooPlants::Category.all[input - 1] 
        
        display_categories_items(category)
      else
        puts "\nPlease put in a valid category number".red.bold
        list_bamboo_categories  #recall list 
        chosen_category
    end
  end
  
  def display_categories_items(category)
    
    BambooPlants::Scraper.scrape_types(category)
    
  end
  
    
end  
  
  
end
