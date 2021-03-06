class BambooPlants::Category
  
  attr_accessor :name, :url

  @@all = [] #array
  
  def initialize(name, url)
    @name = name
    @url = url
    save # saving the objects
   
    
  end
  
  def types
    BambooPlants::Type.all.select do |t|
      t.category == self
  end
end

  def self.all
    BambooPlants::Scraper.scrape_categories if @@all.empty?
    @@all
  end
  
  def save
    @@all << self #saving or remembering the object
  end
  attr_reader :name, :url
end