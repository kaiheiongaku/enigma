require './test/test_helper'
require './lib/characters'

class CharactersTest < Minitest::Test

  def test_it_exists_and_has_a_set
    character = Characters.new

    assert_instance_of Characters, character
    expected = ["a", "b", "c", "d", "e", "f",
                "g", "h", "i", "j", "k", "l",
                "m", "n", "o", "p", "q", "r",
                "s", "t", "u", "v", "w", "x",
                "y", "z", " "]
    assert_equal expected,character.set
  end
end
