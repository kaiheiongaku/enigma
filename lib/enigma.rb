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
    @encrypted_message = @message
    encrypted_hash[:encryption] = @encrypted_message
    encrypted_hash[:key] = @key
    encrypted_hash[:date] = @date
    encrypted_hash
  end

  def create_shifts
    @shift = Shift.new(@key, @date)
  end

  def message_array
    @message.chars
  end

  def create_character_set
    characters = Characters.new
  end

  # def rotate_letters
  #   message_array.each do |letter|



# def test_encrypt_that_puppy
  #   iterate through them, rotating every 4th
  # end









end
