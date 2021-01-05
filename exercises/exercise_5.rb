require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
# Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
# On the next line, also output the average annual revenue for all stores.
# Output the number of stores that are generating $1M or more in annual sales. Hint: Chain together where and size (or count) Active Record methods.

@total_revenue = Store.sum(:annual_revenue)
puts @total_revenue

@average_annual_revenue = @total_revenue / Store.count
puts @average_annual_revenue

@over_1M = Store.where("annual_revenue > ?", 1000000000).count
puts @over_1M