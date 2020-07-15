
def are_anagrams?(str1, str2)
  str1 = str1.delete(" ")
  str2 = str2.delete(" ")
  (str1.length == str2.length) && (str1.concat(str2).codepoints.reduce(0) { |red, k| red ^= k } == 0)
end


