=begin   
Find Common Elements

Problem: Write a method that returns the common elements between two arrays.
Challenge: Implement it using iterators like select and include?.
=end


def common_elem_finder(arr_1,arr_2)
 arr_1.select do |x| arr_2.include?x end
end
p common_elem_finder([1,2,3,4],[2,1,4,3,5,6,7])
