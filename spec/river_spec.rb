require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bears.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class RiverSpecTest < MiniTest::Test

  def setup()
@river1 = River.new("Clyde")
@fish1 = Fish.new("Barry")
@bear1 = Bears.new("Yogi")

end

def test_river_name()
  assert_equal("Clyde", @river1.name)
end

def river_fish_count()
  assert_equal(0, @river1.fish_count)
end

def test_river_loose_fish
  @river1.remove_fish@fish1
  @bear1.eats_fish(@river1)
  assert_equal(1, @bear1.stomach)
  assert_equal(0, @river1.river_count())
 end
end


#A river should loose a fish when a bear takes a fish.
