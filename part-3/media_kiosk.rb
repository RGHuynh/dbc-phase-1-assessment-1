require_relative 'items'
require_relative 'storage'

class MediaKiosk

  include RentalOption
  include Storage

  attr_reader :name, :location, :items

  def initialize(args = {})
    @name = args[:name]
    @location = args[:location]
    @items = args[:items]
  end
end
