module Storage
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