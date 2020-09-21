class Key
  attr_reader :key_a,
              :key_b,
              :key_c,
              :key_d,
              :key

  def initialize(key = rand(1000..9999).to_s.prepend('0'))
    @key = key
    @key_a = @key[0,2]
    @key_b = @key[1,2]
    @key_c = @key[2,2]
    @key_d = @key[3,2]
  end
end
