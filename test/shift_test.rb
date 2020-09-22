require './test/test_helper'
require './lib/shift'
require 'mocha/minitest'

class ShiftTest < Minitest::Test

  def test_it_exists
    shift = Shift.new("032986")

    assert_instance_of Shift, shift
  end

  def test_it_can_add_keys_and_offsets
    shift = Shift.new("09867", "032986")

    assert_equal 2, shift.keys.key_a.length
    assert_equal "6", shift.offsets.offset_a
    assert_equal 15, shift.shift_a
    assert_equal 99, shift.shift_b
    assert_equal 95, shift.shift_c
    assert_equal 73, shift.shift_d
  end
end
