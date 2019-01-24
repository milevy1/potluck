require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'

class PotluckTest < Minitest::Test

  def test_potluck_has_date
    potluck = Potluck.new("7-13-18")

    assert_equal "7-13-18", potluck.date
  end

end
