require_relative '../setup'
require_relative '../lib/store'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
Store.create({annual_revenue: 300000, mens_apparel: true, womens_apparel: true, name: 'Burnaby'})
Store.create({annual_revenue: 1260000, mens_apparel: false, womens_apparel: true, name: 'Richmond'})
Store.create({annual_revenue: 190000, mens_apparel: true, womens_apparel: false, name: 'Gastown'})

puts Store.count

