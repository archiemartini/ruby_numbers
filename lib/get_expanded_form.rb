def get_expanded_form(num)

  num_strings = num.to_s.split('')
  if num_strings.length == 2
    num_strings[0] = num_strings[0] + "0"
    return num_strings.join(" + ")
  elsif num_strings.length == 3
    num_strings[0] = num_strings[0] + "00"
    num_strings[1] = num_strings[1] + "0"
    return num_strings.join(" + ")
  else 
    return num
  end
end