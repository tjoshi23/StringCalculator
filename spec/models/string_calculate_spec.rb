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
end
