# # # ab ="str"
# # # ab.to_sym
# # # print ab

# # # Pi = 3.14
# # # p Pi

# # # Pi = 5

# # # p Pi
# # #  a = 8
# # #  a ||= 7
# # #  p a
 
# # # a = "Hamza hamza"
# # #  if a === "hamza"
# # # p "a is in a "
# # #  else 
# # #     p "it is not in a" 
# # # end

# # # a = 1
# # # loop {
# # #     p a
# # #     break unless a !=5
# # #     a+=1
# # # }
# # # a = 10 
# # # case a
# # # when 5
# # #     p 5
# # # when 10 then p "found it"
# # # else p "who r U"
# # # end


# # # 0.upto(10) do 
# # # p a
# # # end

# # # while true 
# # # p "5"

# # # end
# # # 10.times do 
# # # p "x"
# # # end


# # sixes = [10,7,15,6,5,3]

# # # filter =  Proc.new() do |x| 
# # #     x>=7
# # # end
# # # # sixes.select 
# # # # end

# # #  p sixes.select(:filter)



# # square = Proc.new() do |x| x**2 end

# # high_octane_matches =  sixes.select  do |x| x>=7 end
# # p high_octane_matches




# # def unlimited_param  (*param)
# # param.each{ |x|
# #     p x**2 unless x >=5
# #     p x*2 unless x <=5
# # }
# # end 
# #  unlimited_param(1,2,3,4,5,6,7,8,9,0)

# # require "./module.rb"
# # sum = Calculator.add(1,3)
# # sum = add(1,2)
# # p sum
# # require "Math"
# # p Math.sine(10)
# # Include Math
# # p Math.acos(0)
# # p Calculator::add(1,2)

# class Calculator
# attr_accessor :param
# include Math
# def initialize(param )
#     @param=param
# end
# def cos_cal
# return acos(@param)
# end
# end
# new_calc = Calculator.new(0)

# p new_calc.cos_cal

# new_calc.param = 1
# p new_calc.cos_cal


# array = [1,2,3,4,5,6]
# p array.slice(-1...6)

p Math.cos(0)