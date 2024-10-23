=begin 
Rotate an Array

Problem: Rotate an array by n positions. For example, rotating [1, 2, 3, 4, 5] by 2 would result in [3, 4, 5, 1, 2].
Challenge: Consider edge cases where n is greater than the size of the array.
=end

def rotate_array(array,rotations)
modified_array = []
j=0
array.length.times{
    |i|
rotations%=array.length
    if i+rotations>=(array.length)
        modified_array.push(array[j])
        j+=1
    else
        modified_array.push(array[i+rotations])
    end
}
return modified_array
end
p rotate_array([1,2,3,4,5],2)
