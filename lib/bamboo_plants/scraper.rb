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
   
  def self.scrape_types(category)
    doc = Nokogiri::HTML(open("https://lewisbamboo.com/category/bamboo-plants/"))
    
    types = doc.css("ul.products a")
    
    types.each do |type|
      category.types << type.text
    BambooPlants::Type.new(name)
   
  end
end    
  end