require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
totalRev = Store.sum(:annual_revenue)
puts "total rev"
puts totalRev
totalStore = Store.count
average = totalRev / totalStore
puts "average"
puts average

@rich_stores = Store.where("annual_revenue > 1000000")
richStores = @rich_stores.count
puts richStores