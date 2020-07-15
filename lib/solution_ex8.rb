# is str2 a substring of str1
def is_substr?(str1, str2)
  str1.include?(str2)
end

# is str2 a roration of str1
def is_rotation?(str1, str2)
  is_substr?(str1 * 2, str2)
end

