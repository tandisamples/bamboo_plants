class BambooPlants::Scraper
  def self.scrape_categories
    doc = Nokogiri::HTML(open("https://lewisbamboo.com/category/bamboo-plants/"))
    
    categories = doc.css("ul.products h2")
    
    categories.each do |c|
      name = c.text
      BambooPlants::Category.new(name)
    end
  end
  
  def self.scrape_types(category)
    BambooPlants::Type.new("Types of Plants", category)
    BambooPlants::Type.new("NO Types of Plants", category)
  end
end
