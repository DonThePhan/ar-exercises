require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

Store.create(
  name: 'Surrey',
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
)
Store.create(
  name: 'Whistler',
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false
)
Store.create(
  name: 'Yaletown',
  annual_revenue: 430000,
  mens_apparel: 't',
  womens_apparel: 't'
)

@mens_stores = Store.where(mens_apparel: true)

puts "Stores that carry Men's Apparel:"
@mens_stores.each do |store|
  puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end

@womens_stores = Store.where(annual_revenue: 0...1000000, womens_apparel: true)

puts "Stores that carry Women's Apparel and less than 1M in Revenue:"
@womens_stores.each do |store|
  puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end