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
  end
end