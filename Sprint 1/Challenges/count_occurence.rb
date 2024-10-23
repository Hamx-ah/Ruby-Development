=begin 
Count Occurrences

Problem: Write a method that counts the number of occurrences of each element in an array and returns a hash.
Example: ['a', 'b', 'a', 'c', 'b'] => { 'a' => 2, 'b' => 2, 'c' => 1 }
Challenge: Explore the use of the hash default value Hash.new(0).

=end

def count_elems(array)
counter = Hash.new(0)
array.each do |elem|
counter[elem.to_s]+=1
end
return counter
end
p count_elems(['a', 'b', 'a', 'c', 'b'])

