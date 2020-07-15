# run tests via profiler via $ruby spec/profile_spec.rb
# open profile report via $speedscope profile.json
require 'solution_ex5'

RSpec.describe "solution_ex5" do
  context "replace_all_spaces" do
    it "maps `a  shh s ` to `a%20%20shh%20s%20`" do
      str1 = "a  shh s "
      str2 = "a%20%20shh%20s%20"
      expect(replace_all_spaces(str1)).to eq str2
    end
  end
end