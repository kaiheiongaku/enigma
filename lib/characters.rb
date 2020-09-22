class Characters
  attr_reader :set

  def initialize
    @set = ("a".."z").to_a << " "
  end

  def rotate_character(letter, number)
    if @set.include?(letter)
      index = @set.find_index(letter)
      rotated_set = @set.rotate(number)
      rotated_set[index]
    else
      letter
    end
  end
end
