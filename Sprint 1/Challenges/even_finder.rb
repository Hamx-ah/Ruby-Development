=begin
Find Even Numbers
Problem: Write a method that takes an array of numbers and returns a new array containing only even numbers.
Challenge: Handle empty arrays and include the use of iterators like select.
=end

def even_finder(array)
return array.select do |x| x%2==0 end
end

orginal_array = [1,2,3,4,5,6,7,8,9]

p "orginal_array: #{orginal_array}"
p "array of even numbers: #{even_finder(orginal_array)}"