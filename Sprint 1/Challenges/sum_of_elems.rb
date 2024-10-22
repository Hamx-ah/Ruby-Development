=begin
Sum of Elements

Problem: Write a method that returns the sum of all elements in an array.
Challenge: Try solving this using both each and inject/reduce.
=end

def sum_finder(array)
    sum = array.reduce do |sum, x| sum+=x end
        return sum 
end
original_array =[1,2,3,4,5]

p "original array: #{original_array}"
p "sum of elements of array is: #{sum_finder(original_array)}"



