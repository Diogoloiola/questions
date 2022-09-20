require 'byebug'

def remove_duplicates(nums)
  counter = 0
  for i in (0..nums.size - 1)
    if nums[i + 1] != nums[i]
      nums[counter] = nums[i]
      counter += 1
    end
  end
  counter
end
