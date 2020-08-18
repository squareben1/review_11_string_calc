require 'string_calculator'

describe StringCalc do 
  it 'returns empty string & 0' do 
    expect(subject.string_calc("")).to eq ["", 0]
  end 

  it 'returns single digit' do 
    expect(subject.string_calc("1")).to eq ["1", 1]
  end 

  it 'Adds two digits' do 
    expect(subject.string_calc("1 + 1")).to eq ["1 + 1", 2]
  end 
end 