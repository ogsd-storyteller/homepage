require 'rspec'
require_relative '../lib/calculator'

RSpec.describe Calculator do
  describe '.add' do
    it '2つの正の数を加算できる' do
      expect(Calculator.add(2, 3)).to eq(5)
    end

    it '負の数を加算できる' do
      expect(Calculator.add(-1, -2)).to eq(-3)
    end

    it '正の数と負の数を加算できる' do
      expect(Calculator.add(5, -3)).to eq(2)
    end

    it '正の数と負の数を加算できる2' do
      expect(Calculator.add(-1, 1)).to eq(0)
    end

    it 'ゼロを加算できる' do
      expect(Calculator.add(0, 5)).to eq(5)
      expect(Calculator.add(5, 0)).to eq(5)
    end

    it '小数を加算できる' do
      expect(Calculator.add(1.5, 2.3)).to be_within(0.001).of(3.8)
    end
  end

  describe '.sub' do
    it '2つの正の数を減算できる' do
      expect(Calculator.sub(5, 3)).to eq(2)
    end

    it '負の数を減算できる' do
      expect(Calculator.sub(-1, -2)).to eq(1)
    end

    it '正の数から負の数を減算できる' do
      expect(Calculator.sub(5, -3)).to eq(8)
    end

    it 'ゼロを減算できる' do
      expect(Calculator.sub(5, 0)).to eq(5)
    end

    it '小数を減算できる' do
      expect(Calculator.sub(5.5, 2.3)).to be_within(0.001).of(3.2)
    end

    it '結果が負の数になる減算' do
      expect(Calculator.sub(3, 5)).to eq(-2)
    end
  end
end
