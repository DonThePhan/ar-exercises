require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@entire_company_revenue = Store.sum(:annual_revenue)
@average_annual_revenue = @entire_company_revenue/Store.count

puts "Entire Company Revenue: #{@entire_company_revenue}"
puts "Average Annual Revenue for all stores: #{@average_annual_revenue}"

@stores_1M_or_up = Store.where(annual_revenue: 1000000..Float::INFINITY).count
puts "#{@stores_1M_or_up}"