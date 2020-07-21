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
@store1.employees.create(first_name: "Samantha", last_name: "Gadet", hourly_rate: 40)
@store1.employees.create(first_name: "Heather", last_name: "Armstrong", hourly_rate: 70)
@store1.employees.create(first_name: "Francis", last_name: "Bourguoin", hourly_rate: 90)
@store2.employees.create(first_name: "Julian", last_name: "Blois", hourly_rate: 40)
@store2.employees.create(first_name: "Julie", last_name: "Lacourt", hourly_rate: 50)
@store2.employees.create(first_name: "Patrick", last_name: "Roche", hourly_rate: 90)

puts Employee.count