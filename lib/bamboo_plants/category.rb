class BambooPlants::Category
  
  attr_accessor :name
  # attr_reader :types
  @@all = [] #all array
  
  def initialize(name)
    @name = name
  
    save
    # saving the objects
  end
  
  def self.all
    BambooPlants::Scraper.scrape_categories if @@all.empty?
    @@all
  end
  
  #def get_types
    #BambooPlants::Scraper.scrape_types(self) if @@types.empty?
#end
  
  def save
    @@all << self #saving or remembering the object
  end
end