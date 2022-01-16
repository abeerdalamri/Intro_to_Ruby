

Employees = {
    10 => {name:"Ahmed",salary:1000},
    10 => {name:"Ahmed",salary:1000},
    21 => {name:"Mohamed",salary:2000},
    113 => {name:"Mahmoud",salary:5000},
    4 => {name:"Yassin",salary:3000},
    52=>{name:"Taha",salary:4000},
    102=>{name:"Khadija",salary:nil},
    64=>{name:"Sara",salary:5000},
    37=>{name:"Nadine",salary:5000},
    88=>{name:"Doaa",salary:4000},
    90=>{name:"Iman",salary:4000},
    103=>{name:"Khadija",salary:1000},
    12=>{name:"Kholod",salary:nil},
    15=>{name:"Said",salary:nil},
    38=>{name:"Nadine",salary:5000},
    89=>{name:"Doaa",salary:4000},
    91=>{name:"Iman",salary:4000},
    104=>{name:"Khadija",salary:1000},
    17=>{name:"Kholod",salary:nil},
    14=>{name:"Said",salary:nil},
}

#A

#1
puts "Names: #{Employees.map{|key, val| val[:name]}}"

#2
puts " "
puts "Keys: #{Employees.keys}"

#3
puts " "
salary = Employees.map{|key, val| val[:salary]}
salary.delete(nil)
p max_salary = salary.max
puts Employees.select{|key, val| val[:salary] == max_salary }


#4
puts " "
p min_salary = salary.min
p Employees.select{|key1, val1| val1[:salary] == min_salary }

#5
puts " "
avg = salary.sum / salary.count 
puts "Average: #{avg}"

#6
puts " "
emp_without_nil = Employees.select{|key1, val1| val1[:salary] != nil }
puts "Employees without nil salary: #{emp_without_nil}" 

#7
puts " "
uniq = Employees.uniq
puts "uniq employees: #{uniq}"

#B
arr = [10, 20, 30, 40, 10, 10, 20]
arr2 = arr.map{|el| [el, arr.count(el)]}
arr2 = arr2.uniq
puts arr2.to_h







