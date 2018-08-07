This is the README file for our CMPT 470 project
The name of our project is Pizza Canada Delivery Web-system

Important information for the web-system:

Access the page at http://localhost:3000
Seeded admin account information:
Username/Email: admin@sfu.ca
Password: pizzaCanada



Our Pizza Canada Delivery System has the following features :

For the customers:
Account registration and log-in feature (Password is saved as hashed value)
One website requirements is that users cannot see the menu without logging in. They will be forced to log in.
Once logged in, customers can add items to cart, choose their store, and complete their payment
Once an order is placed, the customer can view the status of their order
Once customer receives their order, they can leave a feed back for both the food and the driver.
Customers can also access cart, current placed orders, and completed orders and each of these individual orders

For the drivers:
Account registration and Log-in feature (Password is saved as hashed value)
Once logged in, drivers are not allowed to see the menu button nor access menu page.
Drivers can view placed orders that are awaiting drivers.
Driver can click show order and can choose to take the delivery
Once a delivery is taken, driver can complete the delivery
in case of emergency, they can return it back to the delivery pool for other drivers
Drivers can view their current delivery, available deliveries, or completed deliveries.
If a driver already has a current delivery, they won't be allowed to take a new one and will be alerted when they look at another order's page.
Drivers' view of the order page is limited to only address information and rating. Not the actual order information

For the Administrator:
Create admin accounts
View placed orders, orders out for delivery, completed Orders.
View each individual order and their information.
Can Change order status or delete an order in extreme cases.
Can perform search functions on the following tables: Products, Customers, Admins, Drivers, Orders, Stores
Can create new Stores.

Other site features:
Front-page carousel: A carousel if images in case the company wants to put up promotional pictures.
Sticky navigation bar: Navigation bar always show up at the top of the browser
Order progress bar: Progress bar for each order to indicate order status.

Unfinished features:
Incorporating a Google Map API into the project
