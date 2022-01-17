#A
arr = [1,2,3,4,5]
puts "Max: #{arr.max}" 
puts "Min: #{arr.min}" 
puts "Count: #{arr.count}" 
puts "Sum: #{arr.sum}" 
puts "Multiply: #{arr.map{|num| num*num}}" 

#B
puts "Is value exists? #{arr.include?(10)}"

#C
arr2 = [1,1,2,2,3,3,3]
arr3 = arr2.map{|el| [el, arr2.count(el)]}
puts "The result of count elements in array: #{arr3 = arr3.uniq}"

#D
puts "Sum of array: #{arr.reduce(0){|sum, el| sum+el}}"

#E
arr4 = [1,2,2,3,3,4,4]
puts "Array without dupl: #{arr4.uniq}"

#F

#G
lg = arr4.length
if(lg.odd?)
    puts "max number of odd length: #{arr4.max}"
else
    puts 0
end

#H
arr5 = [1,5,7,8,9,10,17,33,22]
#Check if array empty
if (arr5.empty?)
    puts 0
end
newarr = arr5.select{|el| el < 17  }
puts "Sum of array exept 17 and more: #{newarr.reduce(0){|sum, el| sum+el }}"


#i
arr6 = [1,1,1,1]
puts arr6.all?{|el| el[0]==el }

#J
matrix = [
 ["A","B","C"],
 ["D", "E", "F"]
]
puts "The transpose of a matrix: #{matrix.transpose()}"