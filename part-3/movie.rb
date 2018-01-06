class Movie
  attr_reader :runtime, :title, :format

  def initialize(args ={})
    @runtime = args[:runtime]
    @title   = args[:title]
    @format  = args[:format]
  end

  def available?
    !checked_out?
  end

  def checkout
    @checked_out = true
  end

  def checked_out?
    @checked_out
  end

  def return
    @checked_out = false
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
end
