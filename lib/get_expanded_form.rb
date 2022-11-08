def get_expanded_form(num)
  nums = num.to_s.split('')
  digit_length = nums.length

  n = digit_length - 1
  for i in 0..n do
    if nums[i] == "0"
      nums[i] = ""
    else
     nums[i] = nums[i] + ("0" * (digit_length - i - 1))
    end
  end
  
  return nums.reject(&:empty?).join(" + ")
end

