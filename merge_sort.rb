def merge_sort(arr)
    if arr.length <= 1
      return arr
    else
      mid = arr.length / 2
      left_half = arr[0...mid]
      right_half = arr[mid..-1]
  
      left_sorted = merge_sort(left_half)
      right_sorted = merge_sort(right_half)
  
      merge(left_sorted, right_sorted)
    end
  end
  
  def merge(left, right)
    result = []
    left_index, right_index = 0, 0
  
    while left_index < left.length && right_index < right.length
      if left[left_index] < right[right_index]
        result << left[left_index]
        left_index += 1
      else
        result << right[right_index]
        right_index += 1
      end
    end
  
    result.concat(left[left_index..-1])
    result.concat(right[right_index..-1])
  
    return result
  end
  
  # Example usage:
  unsorted_array = [38, 27, 43, 3, 9, 82, 10]
  sorted_array = merge_sort(the_array)
  puts sorted_array.join(", ") # Output: 3, 9, 10, 27, 38, 43, 82
  