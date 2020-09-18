require 'date'

class Enigma

  def encrypt(message, key, date)
    encrypt_hash = {}
    encrypt_hash[:encryption] = message.encrypted
    encrypt_hash[:key] = key
    encrypt_hash[:date] = date
    encrypt_hash
  end

end
