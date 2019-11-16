class BambooPlants::Scraper
  
  def self.scrape_categories
    
    doc = Nokogiri::HTML(open("https://lewisbamboo.com/category/bamboo-plants/"))
    
    categories = doc.css("ul.products h2")
  
    category_hash = []
    
    categories.each do |category|
      name = category.text 
      BambooPlants::Category.new(name)
    
    end
        
    
  end
end 
