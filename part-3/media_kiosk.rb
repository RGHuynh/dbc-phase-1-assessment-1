class MediaKiosk
  attr_reader :name, :location, :items

  def initialize(args = {})
    @name = args[:name]
    @location = args[:location]
    @items = args[:items]
  end

  def damaged?
    @damaged
  end

  def record_damage
    @damaged = true
  end

  def repair
    @damaged = false
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
