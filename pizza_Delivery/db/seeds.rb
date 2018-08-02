# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Restaurant.delete_all
#Restaurant.create! name: "Admin", email: "admin@sfu.ca", password:"pizzaCanada"
restaurant = Restaurant.new(:name => 'admin', :email => 'admin@sfu.ca', :password => 'pizzaCanada', :password_confirmation => 'pizzaCanada', :phoneNumber => "111-111-1111")
restaurant.save!

Product.delete_all
Product.create! id: 1, name: "Ham and Pineapple Pizza", price: 10.00, active: true, food: 1, image_src: "/assets/pizzas/pineapple.png"
Product.create! id: 2, name: "Pepperoni Pizza", price: 10.00, active: true, food: 1, image_src: "/assets/pizzas/pepperoni.jpg"
Product.create! id: 3, name: "Cheese Pizza", price: 8.00, active: true, food: 1, image_src: "/assets/pizzas/cheese.png"
Product.create! id: 4, name: "Veggie Pizza", price: 12.00, active: true, food: 1, image_src: "/assets/pizzas/veggie.jpg"
Product.create! id: 5, name: "Olive and Ham Pizza", price: 15.00, active: true, food: 1, image_src: "/assets/pizzas/blackolive.jpg"
Product.create! id: 6, name: "Garlic Pizza", price: 12.00, active: true, food: 1, image_src: "/assets/pizzas/garlic.jpg"

Product.create! id: 7, name: "Coca Cola", price: 6.00, active: true, food: 2, image_src: "/assets/drinks/Coca-Cola.jpg"
Product.create! id: 7, name: "Pepsi", price: 6.00, active: true, food: 2, image_src: "/assets/drinks/Pepsi.jpg"
Product.create! id: 7, name: "Mountain Dew", price: 6.00, active: true, food: 2, image_src: "/assets/drinks/Mountain-Dew.jpg"
Product.create! id: 7, name: "Dr Pepper", price: 6.50, active: true, food: 2, image_src: "/assets/drinks/DrPepper.jpg"

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Completed"
OrderStatus.create! id: 5, name: "Cancelled"

#OrderItem.delete_all
#Order.delete_all
