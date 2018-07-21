# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
Product.create! id: 1, name: "Ham and Pineapple Pizza", price: 10.00, active: true
Product.create! id: 2, name: "Pepperoni Pizza", price: 10.00, active: true
Product.create! id: 3, name: "Cheese Pizza", price: 8.00, active: true
Product.create! id: 4, name: "Veggie Pizza", price: 12.00, active: true
Product.create! id: 5, name: "Olive and Ham Pizza", price: 15.00, active: true
Product.create! id: 6, name: "Garlic Pizza", price: 12.00, active: true

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Completed"
OrderStatus.create! id: 5, name: "Cancelled"
