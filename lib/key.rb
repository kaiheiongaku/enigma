class Key
  attr_reader :key_a,
              :key_b,
              :key_c,
              :key_d,
              :randomized_number

  def initialize
    @randomized_number = rand(1000..9999).to_s.prepend('0')
    @key_a = @randomized_number[0,2]
    @key_b = @randomized_number[1,2]
    @key_c = @randomized_number[2,2]
    @key_d = @randomized_number[3,2]
  end

end
