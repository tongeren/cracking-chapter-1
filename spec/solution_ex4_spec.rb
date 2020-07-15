# run tests via profiler via $ruby spec/profile_spec.rb
# open profile report via $speedscope profile.json
require 'solution_ex4'

RSpec.describe "solution_ex4" do
  context "are_anagrams?" do
    it "maps (anagram, garam na) to true" do
      str1 = "anagram"
      str2 = "garam na"
      expect(are_anagrams?(str1, str2)).to eq true
    end

    it "maps (anagram, ga ran na) to false" do
      str1 = "anagram"
      str2 = "ga ran na"
      expect(are_anagrams?(str1, str2)).to eq false
    end
  end

end