require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 8"
puts "----------"

guy = @store1.employees.create(first_name: "Bob", last_name: "Dill", hourly_rate: 100)
guy.save
puts guy.password