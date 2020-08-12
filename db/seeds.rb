# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

items = Item.create([
    { title: 'Boss Chair', description: 'Chair for Bosses', price: 250, image_url: 'chair.jpg', category: 'Chairs', brand: 'Hoffice Boss' },
    { title: 'Workmans Couch', description: 'The Working Mans Couch', price: 380, image_url: 'WorkmansCouch.jpg', category: 'Chairs', brand: 'Workmans' },
    { title: 'Walnut Desk', description: 'A walnut desk for when you feel like doing some work!', price: 150, image_url: 'WalnutDesk.jpg', category: 'Desks', brand: 'Workmans' }
])
