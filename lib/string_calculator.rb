class StringCalc
  def string_calc(string)
    if string == "" 
      ["", 0]
    elsif string == "1"
      [string, 1]
    else
      [string, 2]
    end
  end
end