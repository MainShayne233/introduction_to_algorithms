# Attempt 1, from basic description of insert sort

def insert_sort list
  (1..list.size-1).each do |index|
    (0..index-1).reverse_each do |reverse_index|
      if list[index] < list[reverse_index]
        tmp = list[index]
        list[index] = list[reverse_index]
        list[reverse_index] = tmp
        index -= 1
      else
        break
      end
    end
  end
  list
end

