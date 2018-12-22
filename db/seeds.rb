# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Promise.create!(content: "Solve mysteries",
                           maker_name: "Dipper")
Promise.create!(content: "Find a unicorn",
                           maker_name: "Mabel")
Promise.create!(content: "Pay back $5",
                           maker_name: "Grunkle Stan")
Promise.create!(content: "Become a hero",
                           maker_name: "Soos")
Promise.create!(content: "Be cool and save the day",
                           maker_name: "Wendy")
puts "All #{Promise.all.count} promises created!"
