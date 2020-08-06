# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def rand_boolean
    return rand(0...1.0) > 0.5

end

20.times do 
    Taco.create(
        name: "#{Faker::Hipster.word} #{Faker::Hipster.word} Taco",
        price: rand(0...10.0).round(2),
        vegetarian: rand_boolean
    )

end