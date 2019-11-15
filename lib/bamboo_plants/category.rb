class BambooPlants::Category
  attr_accessor :name, :types
  @@all = []
  
  def initialize(name)
    @name = name
    @types = []
    save
    # instance variable @name
  end
  
  def self.all
    BambooPlants::Scraper.scrape_categories if @@all.empty?
    @@all
  end
  
  def types
    # check to see if there are any types
    BambooPlants::Scraper.scrape_types(self) if @types.empty?
    @types
    # access type
  end
  
  def save
    @@all << self
  end
end