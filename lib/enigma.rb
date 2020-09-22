require 'date'
require './lib/shift'
require './lib/characters'

class Enigma
  attr_reader :message,
              :key,
              :date,
              :encrypted_message,
              :shift

  def encrypt(message,
              key = rand(1000..9999).to_s.prepend('0'),
              date = (Time.new).strftime("%d%m%y"))
    encrypted_hash = {}
    @message = message
    @key = key
    @date = date
    encrypted_hash[:encryption] = rotate_letters
    encrypted_hash[:key] = @key
    encrypted_hash[:date] = @date
    encrypted_hash
  end

  def create_shifts
    @shift = Shift.new(@key, @date)
  end

  def character_set
     Characters.new
  end

  def rotate_letters
    create_shifts
    character_set
    starting_index = 0
    encrypted_message = ""
    @message.each_char do |letter|
      index_number = @message.index(letter, starting_index)
      if index_number == 0 || index_number % 4 == 0
         starting_index += 1
         encrypted_message << character_set.rotate_character(letter, @shift.shift_a)
      elsif index_number == 0 || index_number % 4 == 1
         starting_index += 1
         encrypted_message << character_set.rotate_character(letter, @shift.shift_b)
      elsif index_number == 0 || index_number % 4 == 2
         starting_index += 1
         encrypted_message << character_set.rotate_character(letter, @shift.shift_c)
      elsif index_number == 0 || index_number % 4 == 3
        starting_index += 1
        encrypted_message << character_set.rotate_character(letter, @shift.shift_d)
      end
    end
    encrypted_message
  end

end
