class BambooPlants::Type
  
  attr_accessor :productname, :price
  
  @@all = [] #all array
  
  def initialize(type)
    @type = type
    #@type = []
    save
    # saving the objects
  end
  
  def self.all
    BambooPlants::Scraper.scrape_types if @@all.empty?
    @@all
  end
  
  #def get_types
    #BambooPlants::Scraper.scrape_types(self) if @@types.empty?
#end
  
  def save
    @@all << self #saving or remembering the object
  end
end