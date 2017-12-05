require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Zed", last_name: "Emp", hourly_rate: 40)
@store1.employees.create(first_name: "Sarah", last_name: "Fly", hourly_rate: 56)

@store2.employees.create(first_name: "Jen", last_name: "Nealon", hourly_rate: 55)
@store2.employees.create(first_name: "Jessica", last_name: "Powell", hourly_rate: 50)
@store2.employees.create(first_name: "Sarah", last_name: "Ross", hourly_rate: 40)

puts Employee.count
