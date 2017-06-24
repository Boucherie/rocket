require "minitest/autorun"
require_relative "rocket"


class RocketTest < Minitest::Test
  # Write your tests here!

  def test_setup
    @rocket = Rocket.new
  end



  def test_change_name
    rocket = Rocket.new(name: "test")
    #act
    renamed_rocket = rocket.name=("Mabel")
    assert_equal renamed_rocket, 'Mabel'
  end

  def test_change_colour
    @rocket = Rocket.new(colour: "blue")
    assert @rocket.colour == 'blue'
  end

  def test_change_colour_broken
    @rocket = Rocket.new(colour: "blue")
    refute @rocket.colour == 'red'
  end

  def test_is_flying
    @rocket = Rocket.new(flying: true)
    assert @rocket.land

  end

  def test_is_not_flying
    @rocket = Rocket.new(flying: false)
    refute @rocket.land
  end
end
