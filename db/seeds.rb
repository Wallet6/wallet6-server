# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do 
  u = User.create!(name: Faker::Name.name,
              email: Faker::Internet.unique.email,
              password: 'testing1',
              password_confirmation: 'testing1',
              street: Faker::Address.street_address,
              city: Faker::Address.city,
              state: Faker::Address.state,
              country: 'United States',
              emission_allowance: 5,
              emission_usage: rand(0..5)) 

  r = rand(3..8)
  d = Date.today
  r.times do
    m = u.emission.create(distance: Faker::Number.between(1, 50),
                          emission: Faker::Number.between(1,100),
                          created_at: d)
    d = d - 1.day 

    u.update_attributes!(emission_total: u.emission_total + m.emission, total_distance: u.total_distance + m.distance)
  end
end
