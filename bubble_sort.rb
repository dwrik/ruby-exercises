def swap(array, i, j)
  array[i], array[j] = array[j], array[i]
end

def bubble_sort(array)
  i = 0
  until i == array.length - 1 do
    j = 0
    until j == array.length - i - 1 do
      swap(array, j, j + 1) if array[j] > array[j + 1]
      j += 1
    end
    i += 1
  end
  array
end