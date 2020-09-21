require 'date'

class Enigma
  attr_reader :message,
              :key,
              :date

  def encrypt(message, key, date)
    normal_hash = {}
    @message = message
    @key = key
    @date = date
    normal_hash[:encryption] = message
    normal_hash[:key] = @key
    normal_hash[:date] = @date
    normal_hash
  end



end
