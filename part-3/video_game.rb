class VideoGame
  attr_reader :platform, :title, :developer, :genre

  def initialize(args = {})
    @platform = args[:platform]
    @title = args[:title]
    @developer = args[:developer]
    @genre = args[:genre]
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
