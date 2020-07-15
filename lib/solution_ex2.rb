class Cstring < String
  attr_reader :carr, :head

  def initialize(carr = nil)
    @carr = carr
    @head = nil
  end 

  def [](i)
    i < @carr.length ? @carr[i] : nil
  end

  def reverse
    Cstring.new(@carr.reverse)
  end

end


