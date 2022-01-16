p sym = :welcome_to_ruby
str = sym.to_s

#A
if(str.start_with?("wel") || str.start_with?("to") || start_with?("zzz"))
    p true
else
    p false
end

#B
if(str.end_with?("by") || str.end_with?("zy"))
    p true
else
    p false
end

#C
p sym2 = :welcome_to_rubz
str1 = sym2.to_s

#D
p str1.delete("_").length

#E
p sym2.upcase
p sym2.downcase

#F
p str1
p str1.to_sym

#G
symbols = str1.split("")
p symbols.map { |ch| ch.to_sym }



