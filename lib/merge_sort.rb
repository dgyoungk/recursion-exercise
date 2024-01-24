# pseudocode
# if base case (arr.length == 1)
#   merging...
#   return?
# else
#   sort the left half of the array
#   sort the right half of the array
#   merge the 2 halves
# end

# when n is odd, the right half will have more values
# arr[0..n/2]

unsorted = [1, 3, 7, 2, 4, 9, 10, 8, 12, 14, 5, 18, 11, 6]

def merge_sort(arr)
  if arr.length == 1
    return arr
  else
    a = merge_sort(arr[0...arr.length / 2])
    b = merge_sort(arr[arr.length / 2..])
    sorted = merge(a, b)
  end
end

def merge(arr1, arr2)
  sorted = []
  until arr1.empty? || arr2.empty?
    arr1.first < arr2.first ? sorted << arr1.shift : sorted << arr2.shift
  end
  arr1.empty? ? sorted += arr2 : sorted += arr1
end

sorted = merge_sort(unsorted)

p unsorted
p sorted
