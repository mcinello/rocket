require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!

  def setup
    @rocket = Rocket.new
  end

  def test_initialize_random_name
    result = @rocket.name=("Michelle")

    expected = "Michelle"
    assert_equal expected, result
  end

end
