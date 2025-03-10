require_relative '../app/string_calculator'

RSpec.describe StringCalculator do
  subject { StringCalculator.new }

  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(subject.add("")).to eq(0)
    end

    it 'returns the number itself when there is a single number' do
      expect(subject.add("1")).to eq(1)
    end

    it 'returns the sum of numbers separated by commas' do
      expect(subject.add("1,5")).to eq(6)
    end

    it 'returns the sum of multiple numbers' do
      expect(subject.add("1,2,3,14")).to eq(20)
    end

    it 'returns the sum of numbers separated by newlines or commas' do
      expect(subject.add("1\n2,3\n14")).to eq(20)
    end

    it 'returns the sum of numbers separated by a custom delimiter' do
      expect(subject.add("//;\n1;2;7")).to eq(10)
    end
  end
end