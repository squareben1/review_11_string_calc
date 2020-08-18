class StringCalc
  def create_array(string)
    split_string = string.split(" ")
    num_arr = []
    num_arr << split_string[0].to_i
    num_arr << split_string[2].to_i
  end

  def string_calc(string)
    num_arr = create_array(string)
    # arr[1:]
    if string == "" 
      ["", 0]
    elsif string[2] == "+"
      [string, (num_arr.sum)]
    elsif string[2] == "*"
      [string, (num_arr[0] * num_arr[1])]
    else
      [string, (num_arr[0] - num_arr[1])]
    end
  end
end