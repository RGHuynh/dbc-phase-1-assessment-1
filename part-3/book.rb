require_relative 'items'

class Book
  attr_reader :length, :title, :author, :format, :language

  include RentalOption

  def initialize(args = {})
    parameter_group(args)
  end

  private

  attr_writer :length, :title, :author, :format, :language

  def parameter_group(args)
    self.length = args[:length]
    self.title  = args[:title]
    self.author = args[:author]
    self.format = args[:format]
    self.language = args[:language]
  end

end
