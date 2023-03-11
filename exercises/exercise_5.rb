require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@company_revenue = Store.sum("annual_revenue")
@average_revenue = Store.average("annual_revenue")
@stores_over_1M = Store.where("annual_revenue >= 1000000").count

puts "Company Annual Revenue: #{@company_revenue}"
puts "Average Annual Revenue per store: #{@average_revenue}"
puts "There are #{@stores_over_1M} stores with an annual revenue over $1,000,000"
