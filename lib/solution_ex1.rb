require_relative 'bit_operations'

NO_CHARS_ALLOWED = 26

# string has all unique characters
def has_all_unique_chars?(str)
  if str.length > NO_CHARS_ALLOWED 
    false # pigeon hole principle
  else  
    b = 0b0
    str.each_char do |char|
      k = char.ord
      bit = get_kth_bit(b, k)
      if bit == 1 
        return false
      else 
        b = set_kth_bit(b, char.ord)
      end
    end
    true
  end
end

def has_all_unique_chars_with_data_structure?(str)
  if str.length > NO_CHARS_ALLOWED 
    false # pigeon hole principle
  else  
    h = Hash.new
    str.each_char do |char|
      val = h[char]
      if val.nil?
        h[char] = 1
      else 
        return false
      end
    end
    true
  end
end
