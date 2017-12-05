require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Name a new store"
store_from_user = gets.chomp

s = Store.create(name: store_from_user)

s.errors.messages.each do |column, error|
  puts "#{column}: #{error[0]}"
end
