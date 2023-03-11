require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store = Store.create( 
                      name: "Surrey",
                      annual_revenue: 224000,
                      womens_apparel: true
                    )

store = Store.create( 
                      name: "Whistler",
                      annual_revenue: 1900000,
                      mens_apparel: true
                    )

store = Store.create(
                      name: "Yaletown",
                      annual_revenue: 190000,
                      mens_apparel: true
                    )

puts "There are #{Store.count} stores."


@mens_stores = Store.where("mens_apparel = true")

@mens_stores.find_each do |store| 
  puts "Store: #{store.name}      Annual Revenue: #{store.annual_revenue}"
end