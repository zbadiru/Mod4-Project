# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Phone.destroy_all
Order.destroy_all
JoinTable.destroy_all

10.times do 
    brand = Faker::Device.manufacturer
    name = Faker::Device.model_name
    Phone.create(
        {
            name: brand + name, 
            price: rand(150..1000),
            inCart: false,
            count: 0,
            total: 0
        }
    )
end

User.create(username: "Zack B", password: "12345")
JoinTable.create(order_id: 1, phone_id: 1)
Phone.create(name: "iPhone 6", price: 150.02)
Order.create(user_id: 1)