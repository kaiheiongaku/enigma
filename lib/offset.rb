require './lib/characters'

class Offset

  def initialize(input)
    @date = input
    # @offset_a
    # @offset_b
    # @offset_c
    # @offset_d
  end

  def square_date
    (@date.to_i ** 2).to_s
  end

end
