class BambooPlants::CLI 
  
  #def start is an instance method
  def call 
    
    puts "\nWelcome to Lewis Bamboo!\n".red.bold
    puts "Check out our list of our bamboo plants with the number of choices within each category."
    # Scrape main webpage
    url = "https://lewisbamboo.com/category/bamboo-plants/"
    categories = BambooPlants::Scraper.scrape_categories(url)
    puts categories[1].name
    puts categories[1].url
  end  
end
