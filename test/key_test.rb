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

    key1.stubs(:random_4_digit_num).returns("09867")

    assert_equal "09867", key1.random_4_digit_num
  end

  def test_does_it_create_keys
    key1 = Key.new

    assert_equal true, key1.key_a.include?("0")
    assert_equal 2, key1.key_b.length
    assert_equal 2, key1.key_c.length
    assert_equal 2, key1.key_d.length
  end
end
