# # # difference between print, puts and p
# # # puts and p add a new line after each output but print does not
# # # print and puts always return nill.. there are some examples there
# # # p is use for inspection of object, debuging and it will return the last object it outputs
# # class End
# # def initialize(name) 
# # @name = name
# # end    
# # end
# # # val = print "something \n" # something will be printed on screen
# # # puts "val: #{val}" # only "val: " will be printed and value of val will be nil as print has returned `nil`
# # # # creating an object for class End
# # # end_object = End.new("All")
# # # val = print end_object # this will print object_id and in this case it will also return object_id
# # # puts "\n val: #{val}" # this will print "val: `object_id`" in the console

# # # # now testing all above with puts

# # # val = puts "something" # something will be printed on screen
# # # puts "val: #{val}" # only "val: " will be printed and value of val will be nil as print has returned `nil`
# # # # creating an object for class End
# # # # end_object = End.new("All")
# # # val = puts end_object # this will print object_id and in this case it will also return object_id
# # # puts "val: #{val}" # this will print "val: `object_id`" in the console

# # val = p "hamza"
# # puts val

# # # object inspection using p
# # hash = {
# #     name_1:"grade",
# #     name_2:"grade",
# # }
# # int = 4
# # float = 12.5
# # string = "Hamza"
# # char = 'H'
# # array = [1,2,3,4,5]
# # class_object = End.new("all")
# # def method
# #     return "1"
# # end

# # # datatypes with local variables.... 
# # # global varables start with a dollar sign as $var
# # p hash
# # p int
# # p float
# # p string
# # p array
# # p class_object
# # p method
# # p char





# arr = [-3,4,3,90]
# target = 6
# counter = arr.size
# # calculating the number of iterations required
# arr.size.times do |i|
# counter+=i
# end
# # counter saved
# outer_loop_count = arr.size - 1
# inner_loop_count = outer_loop_count
# o_loop = 0
# i_loop = 1
# i_counter = 1
# o_counter = 0
# counter.times do |i|
# if arr[o_loop] + arr[i_loop] == target && i_loop!=o_loop
#     p [o_loop, i_loop]
#     break
# else 
#     if i_loop % inner_loop_count == 0
#         i_counter-=1
#         i_loop = i_counter 
#         inner_loop_count-=1
#     else
#         i_loop +=1
#     end
#     if o_loop % outer_loop_count == 0
#     o_counter+=1
#     o_loop = o_counter
#     else
#         o_loop+=1
#     end
# end
# end