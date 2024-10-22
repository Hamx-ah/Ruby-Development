=begin
Array Reversal

Problem: Reverse the elements of an array without using Ruby's built-in reverse method.
Challenge: Use loops or recursion to achieve this.
=end

# using recursion

original_array = ['r','e','v','e','r','s','e']
p original_array

def array_reversal(array, counter = 0)
if((counter)!= (array.size - counter - 1) && counter!= (array.size-1))
    temp = array[(array.size - counter - 1)]
    array[(array.size - counter - 1)] = array[counter]
    array[counter] = temp
return array_reversal(array, counter+=1)
else
    return array
end
end
p array_reversal(original_array)



# using loop
counter = 0
loop do 
    break if counter == (original_array.size - counter - 1)
    temp = original_array[(original_array.size - counter - 1)]
    original_array[(original_array.size - counter - 1)] = original_array[counter]
    original_array[counter] = temp
    counter+=1
end

p original_array