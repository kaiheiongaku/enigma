class Key
  attr_reader :random_4_digit_num

  def initialize
    @random_4_digit_num = rand(1000..9999)
  end

  def add_zero_to_random_number
    @random_4_digit_num.to_s.prepend('0')
  end

  def create_keys

end
