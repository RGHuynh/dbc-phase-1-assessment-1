require_relative 'items'

class Movie
  include RentalOption

  attr_reader :runtime, :title, :format

  def initialize(args ={})
    @runtime = args[:runtime]
    @title   = args[:title]
    @format  = args[:format]
  end

end
