array_to_sort = [4,3,78,2,0,2]

def bubble_sort(array)
  (array.size - 1).times do
    array.each_with_index do |num, i|
      if array[i+1].is_a? Numeric
        if array[i] > array[i+1]
      array[i], array[i+1] = array[i+1], array[i]
        end
      end
    end
  end
  p array
end

bubble_sort(array_to_sort)