class StringCalc
  def create_array(string)
    split_string = string.split(" ")
    num_arr = []
    num_arr << split_string[0].to_i
    num_arr << split_string[2].to_i
  end

  def string_calc(string)
    num_arr = create_array(string)
    operator = string[2]

    result = 
    if string.length < 2 
      string.to_i
    else
      num_arr[0].public_send operator, num_arr[1]
    end

    [string, result]
  end
end