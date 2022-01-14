
string = 'Hello Ruby World'
puts string

# A
puts "----A----"
string.slice! "Hello "
puts string 


# B
puts "----B----"
string.insert(0 , "Welcome to ")
puts string

# C 
puts "----C----"
string["World"] = "Abeer"
puts string

#D
puts "----D----"
string["Abeer"] = "\"Abeer\""
puts string

#f
puts "----F----"
string.insert(15, ",")
puts string

#G
puts "----G----"
string.insert(16 , "    ")
puts string

#H
puts "----H----"
p string.length

#I
puts "----I----"
p string.count(' ')
#j
puts "----J----"
puts string.gsub!(/\s/, '-')