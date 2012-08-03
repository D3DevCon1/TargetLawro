require 'test_helper'

class GameweekTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Gameweek.new.valid?
  end
end
