# run tests via profiler via $ruby spec/profile_spec.rb
# open profile report via $speedscope profile.json
require 'solution_ex1'

RSpec.describe "solution_ex1" do
  context "has_all_unique_chars?" do
    it "maps acdcf to false" do
      str = "acdcf"
      expect(has_all_unique_chars?(str)).to eq false
    end

    it "maps acdrf to true" do
      str = "acdrf"
      expect(has_all_unique_chars?(str)).to eq true
    end

    it "maps acbaraf to false" do
      str = "acbaraf"
      expect(has_all_unique_chars?(str)).to eq false
    end

    it "maps abcdefghijklmnopqrstuvwxyza to false" do
      str = "abcdefghijklmnopqrstuvwxyza"
      expect(has_all_unique_chars?(str)).to eq false
    end

    it "maps a acbaraf to false" do
      str = "acbaraf"
      expect(has_all_unique_chars?(str)).to eq false
    end
  end

  context "has_all_unique_chars_with_data_structure?" do
    it "maps acdcf to false" do
      str = "acdcf"
      expect(has_all_unique_chars_with_data_structure?(str)).to eq false
    end

    it "maps acdrf to true" do
      str = "acdrf"
      expect(has_all_unique_chars_with_data_structure?(str)).to eq true
    end

    it "maps acbaraf to false" do
      str = "acbaraf"
      expect(has_all_unique_chars_with_data_structure?(str)).to eq false
    end

    it "maps abcdefghijklmnopqrstuvwxyza to false" do
      str = "abcdefghijklmnopqrstuvwxyza"
      expect(has_all_unique_chars_with_data_structure?(str)).to eq false
    end

    it "maps acbaraf to false" do
      str = "acbaraf"
      expect(has_all_unique_chars_with_data_structure?(str)).to eq false
    end
  end
end