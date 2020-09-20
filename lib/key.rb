class Key
  attr_reader :random_4_digit_num

  def initialize
    @random_4_digit_num = rand(1000..9999)
  end

end
