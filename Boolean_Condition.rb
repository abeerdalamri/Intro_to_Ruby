#A
a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
p dif1 = (a - b).abs
p dif2 = (b - c).abs 

if(dif1 == dif2)
    p true
else
    p false
end

#B
if( (a-b).abs <=1 && ( (a-b).abs >=3 || (a-c).abs >=3 || (b-c).abs >= 3) )
    p true
else
    p false
end

#C
if( (a >= 10 && a<=99) || (b >= 10 && b<=99) )
    p true
else
    p false
end

#D
sum = a + b 
if( (a==11 || b==11) || (sum == 11 || dif1 == 11))
    p true
else
    p false
end

#E
str1 = gets.chomp
str2 = gets.chomp
if( ( (str1[0] != str2[0]) && (str1[str1.length-1] != str2[str2.length-1]) ) && !(str1.include?("x") || str2.include?("x") ))
    p true
else
    p false
end

#F
string = "dfrety"
p string.match?(/[aeoiu]/)

#G

score = gets.chomp.to_i
if(score <= -1)
    puts "Please insert a score from 0 to 100"
elsif(score  <= 49)
    puts "fail"
elsif(score <= 60 )
    puts "pass"
elsif(score <= 70 )
    puts "good"
elsif(score <= 80 )
    puts "very good"  
elsif(score <= 90 )
    puts "excellent"  
elsif(score <= 100 )
    puts "incredible"  
end
