class Bears

  attr_reader :bear_name, :type, :stomach

  def initialize(bear_name, type, stomach)
    @bear_name = bear_name
    @type = type
    @stomach = []

  end

 def stomach()
   return @stomach.count
 end

 def bear_eats_fish(river)
   fish = river.fish_count[0]
   @stomach << fish
   river.pop()
 end





end
