class BambooPlants::CLI 
  
  #def start is an instance method
  def call 
    
    puts "\nWelcome to Lewis Bamboo!\n".red.bold
    puts "Here's our bamboo nursery, which includes the bamboo catagories & number of types within each. "
    get_categories
    list_bamboo_categories
    categories = BambooPlants::Category.all
    puts "\nChoose which category you would like to see:".on_blue.bold
    
    #list categories
    
    
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
end  
  
  
end
