def get_expanded_form(num)
  num_strings = num.to_s.split('')
  digit_length = num_strings.length

  if digit_length == 2
    num_strings[0] = num_strings[0] + "0"
    return num_strings.join(" + ")
  elsif digit_length == 3
    num_strings[0] = num_strings[0] + "00"
    num_strings[1] = num_strings[1] + "0"
    return num_strings.join(" + ")
  elsif digit_length == 4
    num_strings[0] = num_strings[0] + "000"
    num_strings[1] = num_strings[1] + "00"
    num_strings[2] = num_strings[2] + "0"
    return num_strings.join(" + ")
  elsif digit_length == 5
    return zero_expansion_helper(num_strings, digit_length)
  else 
    return num
  end

end

def zero_expansion_helper(num_strings, digit_length)
  nums = num_strings
  n = digit_length - 1
  for i in 0..n do
    nums[i] = nums[i] + ("0" * (digit_length - i - 1))
  end
  return nums.join(" + ")
end

# i = 0
# while i < digit_length do
#   num_strings[i] = num_strings[i] + ("0" * (digit_length - i - 1))
#   i++
# end
# return num_strings