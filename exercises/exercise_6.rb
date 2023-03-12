require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store4 = Store.find_by(id: 4)
@store5 = Store.find_by(id: 5)

@store1.employees.create(first_name: "Steve", last_name: "Jones", hourly_rate: 60)
@store1.employees.create(first_name: "Nancy", last_name: "Bogoch", hourly_rate: 160)
@store2.employees.create(first_name: "Roberta", last_name: "Johannes", hourly_rate: 60)
@store2.employees.create(first_name: "Ali", last_name: "DeSantes", hourly_rate: 160)
@store4.employees.create(first_name: "Roberta", last_name: "Johannes", hourly_rate: 60)
@store4.employees.create(first_name: "Barlo", last_name: "vonStinkalot", hourly_rate: 1600)
@store5.employees.create(first_name: "Jay", last_name: "DiPhillipo", hourly_rate: 60)
@store5.employees.create(first_name: "Asha", last_name: "Morales", hourly_rate: 160)

puts "Enter a new store name:"
@new_store = gets.chomp

store = Store.create(name: "#{@new_store}")

puts store.errors[:name]
puts store.errors[:annual_revenue]

