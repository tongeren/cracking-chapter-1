# run tests via profiler via $ruby spec/profile_spec.rb
# open profile report via $speedscope profile.json
require 'solution_ex6'

RSpec.describe "solution_ex6" do
  context "rotate" do # [n - 1 - j, i]
    it "maps (1, 3, 5) to [0, 1]" do
      i = 1
      j = 3
      n = 5
      a = [1, 1]
      expect(rotate(i, j, n)).to eq a
    end

    it "cycles {[0, 0], [1, 0], [1, 1], [0, 1]}" do
      i = [0, 0]
      r1 = rotate(i[0], i[1], 2)
      r2 = rotate(r1[0], r1[1], 2)
      r3 = rotate(r2[0], r2[1], 2)
      r4 = rotate(r3[0], r3[1], 2)
      expect(r1).to eq [1, 0]
      expect(r2).to eq [1, 1]
      expect(r3).to eq [0, 1]
      expect(r4).to eq [0, 0]
    end
  end

  context "calc_four" do 
    it "maps (2, 5, 7) to [[2, 5], [1, 2], [4, 1], [5, 4]]" do
      i = 2
      j = 5
      n = 7
      b = [[2, 5], [1, 2], [4, 1], [5, 4]]
      expect(calc_four(i, j, n)).to eq b
    end
  end

  context "rotate_four!" do 
    it "when applied four times is the identity on (3, 2, 4, [[0, 1, 2, 3], [4, 5, 6, 7], [-1, 3, 2, 6], [0, 4, 1, -5]])" do
      i = 3
      j = 2
      n = 4
      a1 = [[0, 1, 2, 3], [4, 5, 6, 7], [-1, 3, 2, 6], [0, 4, 1, -5]]
      a = a1.dup
      b = rotate_four!(i, j, n, a)
            .yield_self { |c| rotate_four!(i, j, n, c) }
            .yield_self { |c| rotate_four!(i, j, n, c) }
            .yield_self { |c| rotate_four!(i, j, n, c) }
      expect(b).to eq a1
    end

    it "when applied four times is the identity on (1, 2, 3, [[0, 1, 2], [4, 5, 6], [-1, 3, 2])" do
      i = 1
      j = 2
      n = 3
      a1 = [[0, 1, 2], [4, 5, 6], [-1, 3, 2]]
      a = a1.dup
      b = rotate_four!(i, j, n, a)
            .yield_self { |c| rotate_four!(i, j, n, c) }
            .yield_self { |c| rotate_four!(i, j, n, c) }
            .yield_self { |c| rotate_four!(i, j, n, c) }
      expect(b).to eq a1
    end
  end

  context "rotate_90_degrees!" do
    it "maps [[3, 4, 1, 5], [2, 1, 7, 2], [8, 5, 6, 1], [1, 7, 2, 3]] to [[1, 8, 2, 3], [7, 5, 1, 4], [2, 6, 7, 1], [3, 1, 2, 5]]" do
      a = [[3, 4, 1, 5], [2, 1, 7, 2], [8, 5, 6, 1], [1, 7, 2, 3]]
      b = [[1, 8, 2, 3], [7, 5, 1, 4], [2, 6, 7, 1], [3, 1, 2, 5]]
      expect(rotate_90_degrees!(a)).to eq b
    end

    it "maps [[0, 1, 2], [4, 5, 6], [-1, 3, 2]] to [[-1, 4, 0], [3, 5, 1], [2, 6, 2]]" do
      a = [[0, 1, 2], [4, 5, 6], [-1, 3, 2]]
      b = [[-1, 4, 0], [3, 5, 1], [2, 6, 2]]
      expect(rotate_90_degrees!(a)).to eq b
    end
  end


end