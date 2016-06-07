def insert_sort(array)
  (1..array.size-1).each do |i|
    (0..i-1).reverse_each do |j|
      break if j == 3
    end
    puts j
  end
end

insert_sort [1,4,3,5,4,3,5,6,4]
