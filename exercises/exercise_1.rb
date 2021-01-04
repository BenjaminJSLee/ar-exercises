require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

burnaby = Store.new
burnaby.annual_revenue = 300000
burnaby.name = "Burnaby"
burnaby.mens_apparel = true
burnaby.womens_apparel = true
burnaby.save

richmond = Store.new
richmond.annual_revenue = 1260000
richmond.name = "Richmond"
richmond.mens_apparel = false
richmond.womens_apparel = true
richmond.save

gastown = Store.new
gastown.annual_revenue = 190000
gastown.name = "Gastown"
gastown.mens_apparel = true
gastown.womens_apparel = false
gastown.save