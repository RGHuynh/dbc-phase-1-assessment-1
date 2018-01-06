class CD
  attr_reader :runtime, :title, :artist, :label

  def initialize(args ={})
    @runtime = args[:runtime]
    @title   = args[:title]
    @artist  = args[:artist]
    @label   = args[:label]
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
