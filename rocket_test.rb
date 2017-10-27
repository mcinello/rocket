require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!

  def setup
    @rocket = Rocket.new
  end

  def test_change_name
    result = @rocket.name=("Michelle")

    expected = "Michelle"
    assert_equal expected, result
  end

  def test_change_colour
    result = @rocket.colour=("Blue")
    expected = "Blue"
    assert_equal expected, result
  end

  def test_lift_off_if_rocket_not_flying
    @rocket = Rocket.new(flying: false)
    result = @rocket.lift_off
    expected = true
    assert_equal(@rocket.flying?, true)
    assert_equal expected, result
  end

  def test_lift_off_if_rocket_is_already_flying
    @rocket = Rocket.new(flying: true)
    result = @rocket.lift_off

    expected = false
    assert_equal expected, result
  end


  #
  # def test_land_true
  #   result = @rocket.land
  #   expected = true
  #   assert_equal expected, result
  # end

end
