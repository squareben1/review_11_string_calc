require 'string_calculator'

describe StringCalc do 
  it 'returns empty string & 0' do 
    expect(subject.string_calc("")).to eq ["", 0]
  end 
end 