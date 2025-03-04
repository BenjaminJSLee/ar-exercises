require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surrey = Store.new do |store| 
  store.annual_revenue = 224000
  store.name = "Surrey"
  store.mens_apparel = false
  store.womens_apparel = true
end
surrey.save

whistler = Store.new do |store| 
  store.annual_revenue = 1900000
  store.name = "Whistler"
  store.mens_apparel = true
  store.womens_apparel = false
end
whistler.save

yaletown = Store.new do |store| 
  store.annual_revenue = 430000
  store.name = "Yaletown"
  store.mens_apparel = true
  store.womens_apparel = true
end
yaletown.save

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each { |store|
  puts "Name: #{store.name} - Annual Revenue: #{store.annual_revenue}"
}

@womens_stores = Store.where(womens_apparel: true).where('annual_revenue < ?', 1000000)

@womens_stores.each { |store|
  puts "Name: #{store.name} - Annual Revenue: #{store.annual_revenue}"
}
