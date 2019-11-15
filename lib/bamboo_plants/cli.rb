class BambooPlants::CLI 
  def call 
    puts 'Welcome to Lewis Bamboo!'
    get_advertised_categories
    get_bamboo_category
    # get_bamboo_type
    # list_plants
  end
  
  def get_advertised_categories
    # to be scraped instead
    @category = ['Screening Bamboo', 'Cold Hardy Bamboo', 'Giant Bamboo', 'Indoor and Container Bamboo', 'Clumping Bamboo', 'Staff Picks', 'Large Wholesale Sizes (Frieght Shipping)']
  end
  
  
    def list_plants
      # list the categories 
      @category.each.with_index(1) do |category, index|
      puts "#{index}. #{category}"
    end
  end
end