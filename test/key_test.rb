require './test/test_helper'
require './lib/key'

class KeyTest < Minitest::Test

  def test_it_exists
    key1 = Key.new

    assert_instance_of Key, key1
  end
end
