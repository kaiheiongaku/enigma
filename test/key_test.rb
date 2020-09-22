require './test/test_helper'
require './lib/key'
require 'mocha/minitest'

class KeyTest < Minitest::Test

  def test_it_exists
    key1 = Key.new("09867")

    assert_instance_of Key, key1
  end

  def test_does_it_create_keys_when_key_is_given
    key1 = Key.new("09867")

    assert_equal "09", key1.key_a
    assert_equal "98", key1.key_b
    assert_equal "86", key1.key_c
    assert_equal "67", key1.key_d
  end

  def test_does_it_create_keys_when_key_is_not_given
    key1 = Key.new

    assert_equal true, key1.key_a.include?("0")
    assert_equal 2, key1.key_a.length
    assert_equal 2, key1.key_b.length
    assert_equal 2, key1.key_c.length
    assert_equal 2, key1.key_d.length
  end
end
