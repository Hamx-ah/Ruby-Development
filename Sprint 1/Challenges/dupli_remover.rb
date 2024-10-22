=begin
Unique Elements

Problem: Create a method that removes duplicate elements from an array without using uniq.
Challenge: Use manual iteration and include logic for detecting duplicates.
=end
before_gc = GC.stat(:total_allocated_objects)
start = Time.now
elem_counter = Hash.new(0)
array =  [
    "apple", "banana", "orange", "grape", "apple", "peach", "pear", "banana", "kiwi", "mango",
    "pineapple", "peach", "plum", "apple", "watermelon", "banana", "blueberry", "strawberry", "orange", "kiwi",
    "grapefruit", "apple", "banana", "mango", "apple", "dragonfruit", "pear", "lemon", "lime", "orange",
    "tangerine", "grapefruit", "apple", "banana", "pomegranate", "kiwi", "banana", "mango", "papaya", "orange",
    "blackberry", "apple", "peach", "plum", "apple", "banana", "cherry", "strawberry", "watermelon", "pear",
    "cantaloupe", "banana", "grape", "apple", "plum", "kiwi", "peach", "banana", "fig", "banana",
    "apple", "orange", "grapefruit", "grape", "lemon", "watermelon", "apple", "plum", "dragonfruit", "blueberry",
    "pear", "tangerine", "peach", "plum", "apple", "kiwi", "papaya", "banana", "pomegranate", "mango",
    "blackberry", "banana", "grape", "orange", "watermelon", "lemon", "lime", "kiwi", "apple", "banana",
    "peach", "pear", "banana", "strawberry", "grape", "cherry", "apple", "tangerine", "peach", "orange"
  ]
  
refined_array = []
0...array.size.times do |i|
elem_counter[array[i]]+=1
if elem_counter[array[i]] == 1
    refined_array.push(array[i])
end
end
final = Time.now
after_gc = GC.stat(:total_allocated_objects)
p refined_array
p "Time Taken: #{final - start}"
objects_allocated = after_gc - before_gc

puts "Objects allocated: #{objects_allocated}"