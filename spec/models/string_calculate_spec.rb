require 'rails_helper'
require 'string_calculate'


RSpec.describe StringCalculate, type: :model do
  
  it 'returns 0 for an empty string' do
    expect(StringCalculate.new.add("")).to eq(0)
  end

  it 'returns the number itself for a single number' do
    expect(StringCalculate.new.add("1")).to eq(1)
    expect(StringCalculate.new.add("5")).to eq(5)
  end

  it 'returns the sum of two numbers' do
    expect(StringCalculate.new.add("1,2")).to eq(3)
  end

  it 'returns the sum of an unknown amount of numbers' do
    expect(StringCalculate.new.add("1,2,3,4")).to eq(10)
  end

  it 'handles newlines between numbers' do
    expect(StringCalculate.new.add("1\n2,3")).to eq(6)
  end

  it 'raises an error for incorrect newline placements' do
    expect { StringCalculate.new.add("1,\n") }.to raise_error("Incorrect newline placement")
  end

  it 'supports different delimiters' do
    expect(StringCalculate.new.add("//;\n1;2")).to eq(3)
  end

  it 'raises an exception for negative numbers' do
    expect { StringCalculate.new.add("1,-2") }.to raise_error("negative numbers not allowed: -2")
    expect { StringCalculate.new.add("1,-2,-3") }.to raise_error("negative numbers not allowed: -2, -3")
  end
end
