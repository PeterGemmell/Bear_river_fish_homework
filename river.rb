class River

  attr_reader :name, :fish_count

  def initialize(name)
    @name = name
    @fish_count = []

  end

  def river_count
    return @fish_count.count
  end

  def add_fish(fish)
    @fish_count << fish
  end







end
