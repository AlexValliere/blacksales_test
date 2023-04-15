# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.create(title: "A flight ticket to Bordeaux", description: "A premium ticket to fly back and forth from Paris to Bordeaux", image_url: "https://www.air-journal.fr/wp-content/uploads/air-journal-air-france-airbus-a350-source-com-AF-1.jpg", quantity: 1, price: 299.99)
Product.create(title: "Laptop", description: "A powerful laptop to work everywhere", image_url: "https://files.refurbed.com/pi/hp-probook-650-g4-8350u-1625638707.jpg", quantity: 20, price: 1499.99)
Product.create(title: "Headset", description: "A wireless headset with good sound quality", image_url: "https://resource.logitech.com/content/dam/gaming/en/products/pro-wireless/pro-wireless-headset-gallery-1.png", quantity: 5, price: 149.99)