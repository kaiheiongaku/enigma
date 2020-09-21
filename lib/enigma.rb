require 'date'

class Enigma
  attr_reader :message,
              :key,
              :date

  def encrypt(message, key, date)
    encrypt_hash = {}
    @message = message
    @key = key
    @date = date
    # encrypt_hash[:encryption] = message.encrypt_that_puppy
    # encrypt_hash[:key] = @key
    # encrypt_hash[:date] = @date
    # encrypt_hash
  end



end
