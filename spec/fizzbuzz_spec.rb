require 'spec_helper'
require_relative '../fizzbuzz'

describe FizzBuzz do
  subject { described_class }

  context 'when the number is not divisible by 3 or 5' do
    specify 'it returns the number' do
      [1, 2].each do |value|
        expect(subject.calculate value).to eq value
      end
    end
  end

  context 'when the number is divisible by 3' do
    specify "it returns 'Fizz'" do
      [3, 9, 12].each do |value|
        expect(subject.calculate value).to eq 'Fizz'
      end
    end
  end

  context 'when the number is divisible by 5' do
    specify "it returns 'Buzz'" do
      [5, 10, 20].each do |value|
        expect(subject.calculate value).to eq 'Buzz'
      end
    end
  end

  context 'when the number is divisible by 3 and 5' do
    specify "it returns 'FizzBuzz'" do
      [15, 30, 45].each do |value|
        expect(subject.calculate value).to eq 'FizzBuzz'
      end
    end
  end
end
