require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create(name:"Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.create(name:"Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name:"Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |store|
  puts "the store name is #{store.name} and their annual revenue is #{store.annual_revenue}"
end

@womens_stores_under_1M = Store.where("annual_revenue < ? AND womens_apparel = ?", 1000000, true)

@womens_stores_under_1M.each do |store|
  puts "the store name is #{store.name} and their annual revenue is #{store.annual_revenue}"
end