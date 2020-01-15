require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bears.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class FishSpecTest < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Barry")
    @fish2 = Fish.new("Alex")

  end

  def test_fish_name()
    assert_equal("Barry", @fish1.fish_name)
  end


end
