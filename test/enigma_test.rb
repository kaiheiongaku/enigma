require './test/test_helper'
require './lib/enigma'
require 'date'

class EnigmaTest < Minitest::Test

  def test_it_exists
    enigma = Enigma.new
  end

  def test_enigma_has_attributes
    enigma = Enigma.new
    enigma.encrypt("hello world", "02715", "040895")

    assert_equal "hello world", enigma.message
    assert_equal "02715", enigma.key
    assert_equal "040895", enigma.date
  end

  # def test_encrypt_that_puppy
  #   enigma = Enigma.new
  #   actual = enigma.encrypt_that_puppy("hello world", "02715", "040895")
  #
  #   assert_equal "keder ohulw", actual
  # end

  # def test_encrypt
  #   enigma = Enigma.new
  #   expected = ({ encryption: "keder ohulw",
  #                        key: "02715",
  #                       date: "040895"
  #                       })
  #   actual = enigma.encrypt("hello world", "02715", "040895")
  #   assert_equal expected, actual
  # end



end
