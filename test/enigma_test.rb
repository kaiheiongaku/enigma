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

  def test_enigma_no_date_provided
    enigma = Enigma.new
    enigma.encrypt("hello world", "02715")

    assert_equal 6, enigma.date.length
  end

  def test_it_creates_shifts_when_given_key_and_date
    enigma = Enigma.new
    enigma.encrypt("hello world", "02715", "040895")

    assert_equal 3, enigma.create_shifts.shift_a
    assert_equal 27, enigma.create_shifts.shift_b
    assert_equal 73, enigma.create_shifts.shift_c
    assert_equal 20, enigma.create_shifts.shift_d
  end


  # def test_encrypt_that_puppy
  #   enigma = Enigma.new
  #   enigma.encrypt("hello world", "02715", "040895")
  #   assert_equal "keder ohulw", enigma.encrypted_message
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
