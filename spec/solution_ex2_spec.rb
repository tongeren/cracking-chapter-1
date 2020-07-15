# run tests via profiler via $ruby spec/profile_spec.rb
# open profile report via $speedscope profile.json
require 'solution_ex2'

RSpec.describe "solution_ex2" do
  context "Cstring.reverse" do
    it "reverses c-string abcd" do
      cstr = Cstring.new(["a", "b", "c", "d"])
      rcstr = Cstring.new(["d", "c", "b", "a"])
      expect(cstr.reverse).to eq rcstr 
    end
  end
end