# run tests via profiler via $ruby spec/profile_spec.rb
# open profile report via $speedscope profile.json
require 'solution_ex3'

RSpec.describe "solution_ex3" do
  context "remove_duplicate_chars_in_string1!" do
    it "maps afgtatf to afgt" do
      str1 = "afgtatf"
      str2 = "afgt"
      expect(remove_duplicate_chars_in_string1!(str1)).to eq str2 
    end
  end

  context "remove_duplicate_chars_in_string2!" do
    it "maps afgtatf to afgt" do
      str1 = "afgtatf"
      str2 = "afgt"
      expect(remove_duplicate_chars_in_string2!(str1)).to eq str2 
    end
  end
end