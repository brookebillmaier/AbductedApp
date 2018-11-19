# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

<<<<<<< HEAD
<<<<<<< HEAD
aliens = Alien.create([{name:'Dilbert', birthday:'12/1/1900', species:'Martian', planet:'Mars', image:'https://www.colourbox.de/preview/8565283-.jpg'}])
=======
=======
>>>>>>> parent of caad5cc... fixing merge conflicts
# aliens = Alien.create([{name:'Dilbert', birthday:'12/1/1900', species:'Martian', planet:'Mars', image:'https://www.colourbox.de/preview/8565283-.jpg'}])


# CREATE TABLE aliens (id SERIAL, name VARCHAR(200), birthday VARCHAR(200), species VARCHAR(150), planet TEXT, image TEXT);


#variables

<<<<<<< HEAD
images=["http://4.bp.blogspot.com/-A4OLnxTKPu0/VSyDf4r3RiI/AAAAAAAGOSM/SjxCfklOVOI/s1600/tumblr_nmp2jgz4DF1tput72o4_1280.jpg","http://sims4updates.net/wp-content/uploads/2015/04/1569.jpg","http://simscommunity.info/wp-content/uploads/2015/03/3Im8Lg-J.png", "https://mir-s3-cdn-cf.behance.net/project_modules/disp/b0b9417930237.5602a730ac72e.jpg", "https://kathleenhalme.com/images/alien-clip-boy-1.png", "https://cdn4.iconfinder.com/data/icons/monster-2-1/512/MonsterV3-34-512.png", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5cRuyjurlKSaQ2PNrvm0O3gHwXLETWJfnKhKVFpMieN1lYYyg", "https://sites.google.com/site/eternalfallout/alienhead-detailed.jpg","https://robohash.org/97.87.2sdf8/?set=set2", "https://robohash.org/raobfdos8/?set=set2", "https://robohash.org/9robotfdhat8/?set=set2","https://robohash.org/alien/?set=set2", "https://robohash.org/alienguy/?set=set2", "https://robohash.org/randoalien/?set=set2", "https://robohash.org/839282.2819382/?set=set2", "https://robohash.org/rsdjkflsajf/?set=set2", "https://orig00.deviantart.net/5fed/f/2011/123/c/2/paul___my_alien_avatar_by_thyrring-d3fhdna.jpg", "http://profilepicturesdp.com/wp-content/uploads/2018/06/alien-profile-pictures-3.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn3VW_Fr7dsHfoowdQyfbKSkTRVSHo9Yoa3w5S4tGkt4bVk4Y6", "https://lentensausages.com/wp-content/uploads/2015/12/Paul-Alien.jpg", "http://lajmi.net/wp-content/uploads/2016/09/Alien-3-1024x768.jpg", "https://cdn-istoe-ssl.akamaized.net/wp-content/uploads/sites/14/2016/01/mi_8587496878947118.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJDBwHw2AKq2cCMMotQc9Y4OA778AywRqkyJL7McX5RaPmMvpG", "https://www.colourbox.com/preview/5464205-cute-furry-alien.jpg", " https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJSjXu5lo0QgCPDVkXe3e_e_ONmWNjbh9FzaS7vJ2hyq77CeOu8A"]
=======
images=["https://robohash.org/97.87.2sdf8/?set=set2", "https://robohash.org/raobfdos8/?set=set2", "https://robohash.org/9robotfdhat8/?set=set2","https://robohash.org/alien/?set=set2", "https://robohash.org/alienguy/?set=set2", "https://robohash.org/randoalien/?set=set2", "https://robohash.org/839282.2819382/?set=set2", "https://robohash.org/rsdjkflsajf/?set=set2", "https://orig00.deviantart.net/5fed/f/2011/123/c/2/paul___my_alien_avatar_by_thyrring-d3fhdna.jpg", "http://profilepicturesdp.com/wp-content/uploads/2018/06/alien-profile-pictures-3.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn3VW_Fr7dsHfoowdQyfbKSkTRVSHo9Yoa3w5S4tGkt4bVk4Y6", "https://lentensausages.com/wp-content/uploads/2015/12/Paul-Alien.jpg", "http://lajmi.net/wp-content/uploads/2016/09/Alien-3-1024x768.jpg", "https://cdn-istoe-ssl.akamaized.net/wp-content/uploads/sites/14/2016/01/mi_8587496878947118.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJDBwHw2AKq2cCMMotQc9Y4OA778AywRqkyJL7McX5RaPmMvpG", "https://www.colourbox.com/preview/5464205-cute-furry-alien.jpg", " https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJSjXu5lo0QgCPDVkXe3e_e_ONmWNjbh9FzaS7vJ2hyq77CeOu8A"]
>>>>>>> parent of caad5cc... fixing merge conflicts


#aliens

30.times do
  image = images.sample
  Alien.create({
    'name' => "#{Faker::FunnyName.name_with_initial}",
    'birthday' => "#{Faker::Date.birthday(200, 2000)}",
    'species' => "#{Faker::HitchhikersGuideToTheGalaxy.specie}",
    'planet' => "#{Faker::HitchhikersGuideToTheGalaxy.planet}",
    'image' => image
    })
end
p "database seeded"
<<<<<<< HEAD
>>>>>>> 760c5761bd738dae24c1beecfee14c8a0b7a35d9
=======
>>>>>>> parent of caad5cc... fixing merge conflicts
