def remove_element(nums, val)
  count = 0
  nums.each do |i|
    if i != val
      nums[count] = i
      count += 1
    end
  end
  count
end

elemnts = [3, 2, 2, 3]

result = remove_element(elemnts, 3)

(0..result).each do |i|
  puts elemnts[i]
end
