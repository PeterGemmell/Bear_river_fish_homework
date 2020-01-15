require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bears.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearsSpecTest < MiniTest::Test

  def setup()
    @bear1 = Bears.new("Yogi", "Brown Bear", [])
    @fish2 = Fish.new("Alex")
    @river1 = River.new("Clyde")
  end

  def test_bear_name()
    assert_equal("Yogi", @bear1.bear_name)
  end

  def test_bear_type()
    assert_equal("Brown Bear", @bear1.type)
  end

  def test_bear_empty_stomach
    assert_equal(0, @bear1.stomach)
  end

  def test_bear_eats_fish
    @river1.add_fish@fish2
    @bear1.eats_fish(@river1)
    assert_equal(1, @bear1.stomach)
    assert_equal(0, @river1.river_count())
  end
end
