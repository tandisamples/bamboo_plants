require_relative "./bamboo_plants/version"
require_relative "./bamboo_plants/cli"
require_relative "./bamboo_plants/category"
require_relative "./bamboo_plants/types"
require_relative "./bamboo_plants/scraper"

require 'pry'
require 'nokogiri'
require 'open-uri'

module BambooPlants
  class Error < StandardError; end
  # Your code goes here...
end
