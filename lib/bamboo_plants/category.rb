class BambooPlants::Category
  @@all = []
  attr_accessor :name
  
  def initialize(name)
    @name = name
    save
    # instance variable @name
  end
  
  def self.all
    BambooPlants::Scraper.scrap_categories if @@all.empty?
    @@all
  end
  
  def save
    @@all << self
  end
end