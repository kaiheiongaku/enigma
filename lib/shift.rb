require './lib/characters'
require './lib/key'
require './lib/offset'

class Shift
  attr_reader :keys, :offsets

  def initialize(key = rand(1000..9999).to_s.prepend('0'), date)
    create_keys(key)
    create_offsets(date)
  end

  def create_keys(key)
    @keys = Key.new(key)
  end

  def create_offsets(date)
    @offsets = Offset.new(date)
  end

  def shift_a
    @keys.key_a.to_i + @offsets.offset_a.to_i
  end

  def shift_b
    @keys.key_b.to_i + @offsets.offset_b.to_i
  end

  def shift_c
    @keys.key_c.to_i + @offsets.offset_c.to_i
  end

  def shift_d
    @keys.key_d.to_i + @offsets.offset_d.to_i
  end

end
