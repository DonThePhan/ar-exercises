require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts 'Exercise 6'
puts '----------'

# Your code goes here ...
@store1.employees.create(first_name: 'Khurram', last_name: 'Virani', hourly_rate: 25)
@store1.employees.create(first_name: 'Donny', last_name: 'Phan', hourly_rate: 200)
@store1.employees.create(first_name: 'Jen', last_name: 'Li', hourly_rate: 75)
@store1.employees.create(first_name: 'Troy', last_name: 'Fawkes', hourly_rate: 100)
@store1.employees.create(first_name: 'Brian', last_name: 'Nguyen', hourly_rate: 100)
@store2.employees.create(first_name: 'Gianni', last_name: 'Monardo', hourly_rate: 150)
@store2.employees.create(first_name: 'Mario', last_name: 'Cabral', hourly_rate: 200)
@store2.employees.create(first_name: 'Jerome', last_name: 'Mabini', hourly_rate: 75)
@store2.employees.create(first_name: 'Pawel', last_name: 'Sz', hourly_rate: 100)
response = @store2.employees.create(first_name: 'Seb', last_name: 'Caldarella', hourly_rate: 100)
# p response.errors.messages # how to manually check for errors