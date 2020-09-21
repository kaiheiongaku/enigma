require 'date'

class Enigma
  attr_reader :message,
              :key,
              :date,
              :encrypted_message

  def encrypt(message,
              key = rand(1000..9999).to_s.prepend('0'),
              date = (Time.new).strftime("%d%m%y"))
    encrypted_hash = {}
    @message = message
    @key = key
    @date = date
    @encrypted_message
    encrypted_hash[:encryption] = @message.encrypt_that_puppy
    encrypted_hash[:key] = @key
    encrypted_hash[:date] = @date
    encrypted_hash
  end

  def encrypt_that_puppy
    create_shift
  end




end
