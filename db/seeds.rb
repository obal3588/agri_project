# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Farm.create(name: "farm 1", location: "Al-dilam")
Farm.create(name: "mr.x farms", location: "Al-khobar")
Farm.create(name: "farm 3", location: "Riyadh")
Farm.create(name: "farm 4", location: "Banban")

Plot.create(name: "plot A", crop: "Pumpkin", farm_id: 1)
Plot.create(name: "x", crop: "Carrot", farm_id: 2)
Plot.create(name: "plot h", crop: "Cucumber", farm_id: 1)
Plot.create(name: "d", crop: "okra", farm_id: 2)
Plot.create(name: "plot z", crop: "pumpkin", farm_id: 1)

Log.create(entryrai: "water", farm_id: 1, plot_id: 1)
Log.create(entryrai: "fertelizer", farm_id: 1, plot_id: 2)
Log.create(entryrai: "seed", farm_id: 1, plot_id: 3)
Log.create(entryrai: "plow", farm_id: 2, plot_id: 2)
Log.create(entryrai: "water", farm_id: 2, plot_id: 4)

User.create! :email => "admin@gmail.com", :password => "123123", :password_confirmation => "123123", :admin => true
User.create! :email => "emp@gmail.com", :password => "123123", :password_confirmation => "123123", :emp => true
User.create! :email => "user@gmail.com", :password => "123123", :password_confirmation => "123123"
