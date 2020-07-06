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

User.create(username: "Zack B", password: "12345")
JoinTable.create(order_id: 1, phone_id: 1)
Phone.create([
    {
    name: "Google Pixel - Black",
    img: "https://images-na.ssl-images-amazon.com/images/I/61eQRrP5STL._AC_SL1000_.jpg",
    price: rand(150..1000),
    inCart: false,
    count: 0,
    total: 0
    },
    {
    name: "Samsung S7",
    img: "https://www.cellunlocker.net/wp-content/uploads/2016/02/Galaxy-S7-Edge.png",
    price: rand(150..1000),
    count: 0,
    total: 0
    },
    {
    name: "HTC 10 - Black",
    img: "https://lh3.googleusercontent.com/proxy/tUBKFRSd5Y90ij71A9ZlkMoPw3W2lz0kTRawBCrJ57CGCy1D4E1cqHqUsC5_q8PYgJ3p6KgJ72L6RYqlOyAkU9hQyVysPLpWCKV-rVd74Q",
    price: rand(150..1000),
    count: 0,
    total: 0
    },
    {
    name: "HTC 10 - White",
    img: "https://images-na.ssl-images-amazon.com/images/I/51iDpsepK8L.jpg",
    price: rand(150..1000),
    inCart: false,
    count: 0,
    total: 0
    },
    {
    name: "HTC Desire 626s",
    img: "https://cdn-0.phonesdata.com/files/models/HTC-Desire-626s-933.jpg",
    price: rand(150..1000),
    inCart: false,
    count: 0,
    total: 0
    },
    {
    name: "Vintage Iphone",
    img: "https://www.slickwraps.com/media/catalog/product/cache/1/image/580x580/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone-x_combine_retro_1.jpg",
    price: rand(150..1000),
    inCart: false,
    count: 0,
    total: 0
    },
    {
    name: "Iphone 7",
    img: "https://media.4rgos.it/s/Argos/6049687_R_SET?$Main768$&w=620&h=620",
    price: rand(150..1000),
    inCart: false,
    count: 0,
    total: 0
    },
    {
    name: "iPhone 11",
    img: "https://www.three.co.uk/static/images/device_pages/MobileVersion/Apple/iPhone_11_Pro/Space_Grey/carousel/1.jpg",
    price: rand(150..1000),
    inCart: false,
    count: 0,
    total: 0
    }
]);
Order.create(user_id: 1)