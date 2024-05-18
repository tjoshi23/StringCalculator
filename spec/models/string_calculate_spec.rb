require 'rails_helper'
require 'string_calculate'


RSpec.describe StringCalculate, type: :model do
  it 'returns 0 for an empty string' do
    expect(StringCalculate.new.add("")).to eq(0)
  end

  
end
