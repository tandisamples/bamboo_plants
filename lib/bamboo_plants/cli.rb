class BambooPlants::CLI 
  def call 
    puts "\nWelcome to Lewis Bamboo!\n"
    get_advertised_categories
    list_plants
    get_bamboo_category
    # get_bamboo_type
    
  end
  
  def get_advertised_categories
    # to be scraped instead
    @category = ['Screening Bamboo', 'Cold Hardy Bamboo', 'Giant Bamboo', 'Indoor and Container Bamboo', 'Clumping Bamboo', 'Staff Picks', 'Large Wholesale Sizes (Frieght Shipping)']
  end
  
    def list_plants
      puts 'Choose a category to see types of bamboo.'
      @category.each.with_index(1) do |category, index|
        puts "#{index}. #{category}"
    end
  end
  
  def get_bamboo_category
    chosen_category = gets.strip
    # if valid_input(chosen_category.to_i, @category)
    # end
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end
end