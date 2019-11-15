class BambooPlants::Scraper
  def scrape_categories
    doc = Nokogiri::HTML(open("https://lewisbamboo.com/category/bamboo-plants/"))
    binding.pry
  end
end