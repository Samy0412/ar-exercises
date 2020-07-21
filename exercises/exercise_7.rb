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

puts "Give me a store name?"
store = gets.chomp

store = Store.create(name: store)

puts "name errors: #{store.errors[:name]}"
puts "annual_revenue errors: #{store.errors[:annual_revenue]}"
puts "apparel_errors: #{store.errors[:must_sell_apparel]}"

