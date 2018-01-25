require_relative 'items'

class VideoGame

  include RentalOption

  attr_reader :platform, :title, :developer, :genre

  def initialize(args = {})
    @platform = args[:platform]
    @title = args[:title]
    @developer = args[:developer]
    @genre = args[:genre]
  end

end
