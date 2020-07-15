# run tests via profiler via $ruby spec/profile_spec.rb
# open profile report via $speedscope profile.json
require 'bit_operations'

RSpec.describe "bit_operations" do
  context "set_kth_bit" do
    it "maps (0b110101, 1) to 0b110111" do
      n1 = 0b110101
      k = 1
      n2 = 0b110111
      expect(set_kth_bit(n1, k)).to eq n2 
    end

    it "maps (0b110101, 0) to 0b110101" do
      n1 = 0b110101
      k = 0
      n2 = 0b110101
      expect(set_kth_bit(n1, k)).to eq n2 
    end
  end

  context "unset_kth_bit" do
    it "maps (0b110101, 2) to 0b110001" do
      n1 = 0b110101
      k = 2
      n2 = 0b110001
      expect(unset_kth_bit(n1, k)).to eq n2 
    end

    it "maps (0b110101, 1) to 0b110101" do
      n1 = 0b110101
      k = 1
      n2 = 0b110101
      expect(unset_kth_bit(n1, k)).to eq n2 
    end
  end

  context "get_kth_bit" do
    it "maps (0b110101, 2) to 1" do
      n1 = 0b110101
      k = 2
      expect(get_kth_bit(n1, k)).to eq 1
    end

    it "maps (0b110101, 1) to 0" do
      n1 = 0b110101
      k = 1
      expect(get_kth_bit(n1, k)).to eq 0 
    end
  end
end