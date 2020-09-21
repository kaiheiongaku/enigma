require './test/test_helper'
require './lib/shift'
require 'mocha/minitest'

class ShiftTest < Minitest::Test

  def test_it_exists
    shift = Shift.new

    assert_instance_of Shift, shift
  end

  def test_it_can_add_keys_and_offsets
    shift = Shift.new
    key = Key.new
    offset = Offset.new

    assert_equal 15, shift.shift_a
    assert_equal 99, shift.shift_b
    assert_equal 95, shift.shift_c
    assert_equal 73, shift.shift_d
  end
end
