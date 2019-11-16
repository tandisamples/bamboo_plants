class BambooPlants::Category
  attr_accessor :name, :types
  @@all = []
  
  # a category has a name, type, type information
  
  def initialize(name)
    @name = name
    #@types = []
    save
    # instance variable @name
  end
  
  def self.all
    BambooPlants::Scraper.scrape_categories if @@all.empty?
    @@all
  end
  
  #def get_types
    #BambooPlants::Scraper.scrape_types(self) if @@types.empty?
#end
  
  def save
    @@all << self
  end
end