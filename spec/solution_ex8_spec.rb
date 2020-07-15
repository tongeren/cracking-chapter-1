# run tests via profiler via $ruby spec/profile_spec.rb
# open profile report via $speedscope profile.json
require 'solution_ex8'

RSpec.describe "solution_ex8" do
  context "is_substr?" do
    it "maps (`waterbottle`, `water`) to true" do
      str1 = "waterbottle"
      str2 = "water"
      expect(is_substr?(str1, str2)).to eq true
    end

    it "maps (`bottle`, `water`) to false" do
      str1 = "bottle"
      str2 = "water"
      expect(is_substr?(str1, str2)).to eq false
    end
  end

  context "is_rotation?" do
    it "maps (`waterbottle`, `erbottlewat`) to true" do
      str1 = "waterbottle"
      str2 = "erbottlewat"
      expect(is_rotation?(str1, str2)).to eq true
    end

    it "maps (`bottle`, `water`) to false" do
      str1 = "bottle"
      str2 = "water"
      expect(is_rotation?(str1, str2)).to eq false
    end
  end
end