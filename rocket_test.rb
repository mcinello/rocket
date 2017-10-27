require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
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

  def test_tell_rocket_to_land
    @rocket = Rocket.new(flying: true)
    result = @rocket.land
    expected = true
    assert_equal(@rocket.flying?, false)
    assert_equal expected, result
  end

  def test_rocket_already_landed
    @rocket = Rocket.new(flying: false)

    result = @rocket.land
    expected = false
    assert_equal expected, result
  end

  def test_rocket_status_is_flying
    @rocket = Rocket.new(flying: true)
    @rocket.name = "New Name"
    result = @rocket.status
    expected =  "Rocket #{@rocket.name} is flying through the sky!"
    assert_equal expected, result
  end

  def test_rocket_status_not_flying
    @rocket = Rocket.new(flying:false)
    @rocket.name = "New Name"
    result = @rocket.status
    expected =  "Rocket #{@rocket.name} is ready for lift off!"
    assert_equal expected, result
  end
end
