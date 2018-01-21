# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

150.times do 
  u = User.create!(name: Faker::Name.name,
              email: Faker::Internet.unique.email,
              password: 'testing1',
              password_confirmation: 'testing1',
              street: Faker::Address.street_address,
              city: Faker::Address.city,
              state: Faker::Address.state,
              country: Faker::Address.country) 

  r = rand(3..8)
  r.times do
    Emission.create(user: u,
                    distance: Faker::Number.between(1, 50),
                    emission: Faker::Number.between(1,100),
                    created_at: Faker::Date.between(5.days.ago, Date.today))
  end
end
