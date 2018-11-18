# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# aliens = Alien.create([{name:'Dilbert', birthday:'12/1/1900', species:'Martian', planet:'Mars', image:'https://www.colourbox.de/preview/8565283-.jpg'}])


# CREATE TABLE aliens (id SERIAL, name VARCHAR(200), birthday VARCHAR(200), species VARCHAR(150), planet TEXT, image TEXT);


#variables

image=["https://robohash.org/97.87.2sdf8/?set=set2", "https://robohash.org/raobfdos8/?set=set2", "https://robohash.org/9robotfdhat8/?set=set2","https://robohash.org/alien/?set=set2", "https://robohash.org/alienguy/?set=set2", "https://robohash.org/randoalien/?set=set2", "https://robohash.org/839282.2819382/?set=set2", "https://robohash.org/rsdjkflsajf/?set=set2"]


#aliens

# 10.times do
#   Alien.create({
#     'name' => "#{Faker::FunnyName.name_with_initial}",
#     'birthday' => "#{Faker::Date.birthday(200, 2000)}",
#     'species' => "#{Faker::HitchhikersGuideToTheGalaxy.specie}",
#     'planet' => "#{Faker::HitchhikersGuideToTheGalaxy.planet}",
#     'image' => image
#     })
# end
10.times do
  Alien.create({
    'name' => "test",
    'birthday' => "test",
    'species' => "test",
    'planet' => "test",
    'image' => "image"
    })
end
p "database seeded"
