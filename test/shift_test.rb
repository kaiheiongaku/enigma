require './test/test_helper'
require './lib/shift'
require 'mocha/minitest'

class ShiftTest < Minitest::Test

  def test_it_exists
    shift = Shift.new

    assert_instance_of Shift, shift
  end

  def test_it_has_keys_and_offsets
end
