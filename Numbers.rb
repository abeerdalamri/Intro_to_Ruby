x = 1

#A
puts x.to_s(2)

#B
puts x.even?
puts x.odd?

#C
p num = x - 2

#D
puts d = num / 2

#E
puts sum = d + 1.25.to_r

#F
##numerator
puts "numerator: #{sum.numerator}" 
##denominator
puts "denominator: #{sum.denominator}" 

#G 
mul = sum * Rational('1/3')
puts mul

#H
puts r = mul.round(3)


#I
y = r.to_s
p y

#J
p int = y.to_i

#K
p int.to_f