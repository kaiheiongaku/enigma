require './test/test_helper'
require './lib/characters'

class CharactersTest < Minitest::Test

  def test_it_exists_and_has_a_set
    characters = Characters.new

    assert_instance_of Characters, characters
    expected = ["a", "b", "c", "d", "e", "f",
                "g", "h", "i", "j", "k", "l",
                "m", "n", "o", "p", "q", "r",
                "s", "t", "u", "v", "w", "x",
                "y", "z", " "]
    assert_equal expected,characters.set
  end

  def test_rotate_character
    characters = Characters.new

    assert_equal "b", characters.rotate_character("a", 1)
    assert_equal "a", characters.rotate_character("a", 27)
    assert_equal "d", characters.rotate_character("l", 73)
  end

  def test_inclusion_of_character
    characters = Characters.new

    assert_equal "!", characters.rotate_character("!", 2)
    assert_equal "b", characters.rotate_character("a", 1)
  end
end
