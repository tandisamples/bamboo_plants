class BambooPlants::Category
  
  attr_accessor :name, :url

  @@all = [] #array
  
  def initialize(name, url)
    @name = name
    @url = url
    save # saving the objects
  end
  
  def self.all
    BambooPlants::Scraper.scrape_categories if @@all.empty?
    @@all
  end
  
  def save
    @@all << self #saving or remembering the object
  end
  
end