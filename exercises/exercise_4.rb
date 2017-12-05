require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create({annual_revenue: 224000, mens_apparel: false, womens_apparel: true, name: 'Surrey'})
Store.create({annual_revenue: 1900000, mens_apparel: true, womens_apparel: false, name: 'Whistler'})
Store.create({annual_revenue: 430000, mens_apparel: true, womens_apparel: true, name: 'Yaletown'})

@mens_stores = Store.where(mens_apparel: true)

def list_name_rev(stores)
  stores.each do |store|
    puts "#{store.name}, #{store.annual_revenue}"
  end
end

list_name_rev(@mens_stores)

@womens_lowrev_stores = Store.where(womens_apparel: true).where("annual_revenue < 1000000")
list_name_rev(@womens_lowrev_stores)