class Genre
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select { |x| x.genre == self }
  end

  def artists
    Artist.all.select { |x| x.genres.include?(self) }
  end
end
