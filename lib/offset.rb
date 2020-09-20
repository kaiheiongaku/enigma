require './lib/characters'

class Offset
  attr_reader :offset_a,
              :offset_b,
              :offset_c,
              :offset_d

  def initialize(date)
    @date = date
    @offset_a = square_date[-4]
    @offset_b = square_date[-3]
    @offset_c = square_date[-2]
    @offset_d = square_date[-1]
  end

  def square_date
    (@date.to_i ** 2).to_s
  end


end
