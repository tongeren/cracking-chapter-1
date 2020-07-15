def replace_all_spaces(str)
  str.chars.map do |char|
    (char == " ") ? "%20" : char
  end.join
end
