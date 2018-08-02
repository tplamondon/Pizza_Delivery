# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
Product.create! id: 1, name: "Ham and Pineapple Pizza", price: 10.00, active: true image_src: "https://www.cicis.com/media/1140/pizza_adven_hampineapple.png"
Product.create! id: 2, name: "Pepperoni Pizza", price: 10.00, active: true image_src: "https://cdn.ruled.me/wp-content/uploads/2014/08/pepperonipizza.jpg"
Product.create! id: 3, name: "Cheese Pizza", price: 8.00, active: true image_src: "https://www.cicis.com/media/1149/pizza_trad_cheese.png"
Product.create! id: 4, name: "Veggie Pizza", price: 12.00, active: true image_src: "https://www.ruchiskitchen.com/wp-content/uploads/2016/02/veggie-pizza-3-1.jpg"
Product.create! id: 5, name: "Olive and Ham Pizza", price: 15.00, active: true image_src: "https://upload.wikimedia.org/wikipedia/commons/6/64/Pizza_with_ham%2C_pepperoni%2C_olive_and_onion.jpg"
Product.create! id: 6, name: "Garlic Pizza", price: 12.00, active: true image_src: "http://www.recipe4living.com/assets/itemimages/400/400/3/default_6ebeb93c06ed477504b654cc67042f58_white%20pizza.jpg"

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Completed"
OrderStatus.create! id: 5, name: "Cancelled"
