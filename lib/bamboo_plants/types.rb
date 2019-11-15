class BambooPlants::Type
  attr_accessor :name, :category, :plant_info
  
  @@all = []
  
  def initialize(name, category)
    @name = name
    @category = category
    # notify category of type 
    add_to_category
    save
  end
  
  def self.all
    @@all
  end
  
  def add_to_category
  @category.types << self unless @category.types.include?(self)
  
end
  
  def plant_type
    @plant_type || = doc.css("ul.products.columns-4 h2")
end
  
  def save
    @@all << self
  end
end
