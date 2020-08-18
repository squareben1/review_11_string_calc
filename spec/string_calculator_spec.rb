require 'string_calculator'

describe StringCalc do 
  it 'returns empty string & 0' do 
    expect(subject.string_calc("")).to eq ["", 0]
  end 

  it 'returns single digit' do 
    expect(subject.string_calc("1")).to eq ["1", 1]
  end

  it 'returns single diff digit' do 
    expect(subject.string_calc("2")).to eq ["2", 2]
  end 

  it 'Adds two digits' do 
    expect(subject.string_calc("1 + 1")).to eq ["1 + 1", 2]
  end 

  it 'Adds two diff digits' do 
    expect(subject.string_calc("1 + 2")).to eq ["1 + 2", 3]
  end 

  it 'subtracts two digits' do 
    expect(subject.string_calc("1 - 1")).to eq ["1 - 1", 0]
  end

  it 'subtracts two digits' do 
    expect(subject.string_calc("2 - 1")).to eq ["2 - 1", 1]
  end

  it 'subtracts two digits = negative' do #this was to check behaved as expected
    expect(subject.string_calc("1 - 2")).to eq ["1 - 2", -1]
  end

  it 'Multiplies two digits' do 
    expect(subject.string_calc("1 * 2")).to eq ["1 * 2", 2]
  end 
end 