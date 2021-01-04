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

store_name = gets.chomp

new_store = Store.new do |store| 
  store.name = store_name
  # store.annual_revenue = 430000
  # store.mens_apparel = true
  # store.womens_apparel = true
end
new_store.save
if new_store.invalid?
  new_store.errors.full_messages.each { |msg|
    puts "Error: #{msg}"
  }
end
