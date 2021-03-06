require './test/test_helper'
require './lib/offset'

class OffsetTest < Minitest::Test

  def test_it_exists
    offset1 = Offset.new("032986")

    assert_instance_of Offset, offset1
  end

  def test_square_date
    offset1 = Offset.new("032986")

    assert_equal "1088076196", offset1.square_date
  end

  def test_creates_offsets
    offset1 = Offset.new("032986")

    assert_equal "6",offset1.offset_a
    assert_equal "1",offset1.offset_b
    assert_equal "9",offset1.offset_c
    assert_equal "6",offset1.offset_d
  end
end
