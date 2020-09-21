require 'date'
require './lib/shift'

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

  # def encrypt_that_puppy
  #   create_shifts(@key, @date)
  #   make the message into an array of characters using .chars
  #   iterate through them, rotating every 4th
  # end









end
