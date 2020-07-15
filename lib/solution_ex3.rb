require_relative 'bit_operations'

NO_CHARS_ALLOWED = 26

# no extra copy of array allowed
def remove_duplicate_chars_in_string1!(str)
  # characters to remove encoded as 1s in number
  b = 0 
  str.chars.reject do |char|
    k = char.ord
    bit = get_kth_bit(b, k)
    if bit == 1
      true # remove
    else 
      b = set_kth_bit(b, char.ord)
      false # keep
    end
  end.join
end

def remove_duplicate_chars_in_string2!(str)
  # characters to remove encoded as 1s in number
  b = 0 
  str.chars.keep_if do |char|
    k = char.ord
    bit = get_kth_bit(b, k)
    if bit == 1
      false # remove
    else 
      b = set_kth_bit(b, char.ord)
      true # keep
    end
  end.join
end