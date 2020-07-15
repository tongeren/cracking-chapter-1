# run tests via profiler via $ruby spec/profile_spec.rb
# open profile report via $speedscope profile.json
require 'solution_ex7'

RSpec.describe "solution_ex7" do
  context "reset_row_and_column" do
    it "maps [[1, 3, -2, 0], [5, 3, 4, 6], [1, 0, 5, 6], [-7, 2, 5, 2]] to [[0, 0, 0, 0], [5, 0, 4, 0], [0, 0, 0, 0], [-7, 0, 5, 0]]" do
      arr = [[1, 3, -2, 0], [5, 3, 4, 6], [1, 0, 5, 6], [-7, 2, 5, 2]]
      b = [[0, 0, 0, 0], [5, 0, 4, 0], [0, 0, 0, 0], [-7, 0, 5, 0]]
      expect(reset_row_and_column(arr).eql?(b)).to eq true
    end

    it "maps [[-5, 3, 0, 7, -2], [1, 4, 1, 6, 6], [-5, 2, 6, 2, 6]] to [[0, 0, 0, 0, 0], [1, 4, 0, 6, 6], [-5, 2, 0, 2, 6]]" do
      arr = [[-5, 3, 0, 7, -2], [1, 4, 1, 6, 6], [-5, 2, 6, 2, 6]]
      b = [[0, 0, 0, 0, 0], [1, 4, 0, 6, 6], [-5, 2, 0, 2, 6]]
      expect(reset_row_and_column(arr).eql?(b)).to eq true
    end
  end
end