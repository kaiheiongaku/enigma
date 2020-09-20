require './test/test_helper'
require './lib/key'
require 'mocha/minitest'

class KeyTest < Minitest::Test

  def test_it_exists
    key1 = Key.new

    assert_instance_of Key, key1
  end

  def test_it_creates_random_number
    key1 = Key.new
    key1.stubs(:random_4_digit_num).returns(9867)
    assert_equal 9867, key1.random_4_digit_num
  end

  def test_it_adds_a_zero_to_random_number


end
