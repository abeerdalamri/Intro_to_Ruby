#A
arr=[1,2,3,4,5,6,7,8,9,10] 
for x in arr
    puts x
end

#B
puts " "
for var in arr
    if (var == 5 || var == 6)
        next 
    end
    p var;
    
end

#C
puts " "
for el in arr
    if (el < 6)
        p el
    end
end

#D
puts " "
for e in arr
    if (e.even?)
        p e
    end
end

#E
puts " "
for o in arr
    if (o.odd?)
        p o
    end
end

#F
puts " "
for num in arr

    if(num == 1)
        next
    end

    if(num <= 9)
        p num
    elsif(num == 1)
        next
    end
end

#G
puts " "
for oe in arr
    if(oe.even?)
        puts "#{oe} even"
    else
        puts "#{oe} odd"
    end
end

