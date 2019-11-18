class BambooPlants::Scraper
  
  def self.scrape_categories(url)
    
    doc = Nokogiri::HTML(open(url))
    
    categories = doc.css(".products").first 
    
    hrefs = doc.css(".products a").map { |anchor| anchor["href"] }
    array_of_links = categories.css("li h2.woocommerce-loop-category__title") # OR category_name = doc.css(".products h2").text
 #   type_link = categories.css("li.product-category href")
    
    
      array_of_links.map do |link|
    category_hash = []
      BambooPlants::Category.new(link.text, hrefs)
    end
  #return will now be an array of objects
  end  
  
  def self.scrape_types(category)
    doc = Nokogiri::HTML(open(category.url))
    binding.pry
    types = doc.css()
  end
  
end