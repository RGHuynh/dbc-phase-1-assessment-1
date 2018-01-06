class Library
  attr_reader :name, :location, :library_system, :items

  def initialize(args = {})
    @name = args[:name]
    @location = args[:location]
    @items = args[:items]
    @library_system = args[:library_system]
  end

  def add_item(item)
    items << item
  end

  def remove_item(item)
    items.delete(item)
  end

  def available_items
    items.select { |item| item.available? && !item.damaged? }
  end

  def unavailable_items
    items - available_items
  end
end
