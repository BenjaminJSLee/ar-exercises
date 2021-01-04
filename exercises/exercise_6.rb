require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Ben", last_name: "Lee", hourly_rate: 10)
@store1.employees.create(first_name: "Neb", last_name: "Eel", hourly_rate: 20)
@store1.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 30)

@store2.employees.create(first_name: "Traitor", last_name: "Person", hourly_rate: 1)
@store2.employees.create(first_name: "Other", last_name: "Guy", hourly_rate: 100)
@store2.employees.create(first_name: "Redacted", last_name: "???", hourly_rate: 90)