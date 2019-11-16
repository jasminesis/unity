# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Schedule.create(event: "Feed cats", start_time: Time.now(), user_id: 1)
Schedule.create(event: "Pubg", start_time: Time.now(), user_id: 1)
Schedule.create(event: "Pubg", start_time: Time.now(), user_id: 2)
Schedule.create(event: "Pubg", start_time: Time.now(), user_id: 3)

User.create!([
  {email: "1test@gmail.com", username: "1testuser", password: "password", admin: false},
  {email: "2test@gmail.com", username: "2testuser", password: "password", admin: false},
  {email: "3test@gmail.com", username: "3testuser", password: "password", admin: false},
  {email: "4test@gmail.com", username: "4testuser", password: "password", admin: false},
  {email: "5test@gmail.com", username: "5testuser", password: "password", admin: false},
  {email: "6test@gmail.com", username: "6testuser", password: "password", admin: false},
  {email: "7test@gmail.com", username: "7testuser", password: "password", admin: false},
  {email: "8test@gmail.com", username: "8testuser", password: "password", admin: false},
  {email: "9test@gmail.com", username: "9testuser", password: "password", admin: false},
  {email: "10test@gmail.com", username: "10testuser", password: "password", admin: false},
  {email: "11test@gmail.com", username: "11testuser", password: "password", admin: false},
  {email: "12test@gmail.com", username: "12testuser", password: "password", admin: false},
  {email: "13test@gmail.com", username: "13testuser", password: "password", admin: false},
  {email: "14test@gmail.com", username: "14testuser", password: "password", admin: false},
  {email: "admin@gmail.com", username: "testadmin", password: "password", admin: true}
])

Game.create(name: "Fortnite", description: "The game sees 100 players land onto the same map and then take each other on, the last player standing wins.", image_url: "https://cdn.images.express.co.uk/img/dynamic/143/590x/Fortnite-event-1189982.jpg?r=1570993306539")
Game.create(name: "RoBlox", description: "Roblox is essentially a vast library of mini-games that have been created by other people.", image_url: "https://cdn.vox-cdn.com/thumbor/lkE1JeL4S00R-OSTymR5hEXbo9I=/0x0:1920x821/1200x800/filters:focal(807x258:1113x564)/cdn.vox-cdn.com/uploads/chorus_image/image/64904047/roblox.0.png")
Game.create(name: "Minecraft", description: "The game allows players to build with a variety of different blocks in a 3D procedurally generated world, requiring creativity from players.", image_url: "https://upload.wikimedia.org/wikipedia/en/5/51/Minecraft_cover.png")
Game.create(name: "PUBG", description: "PLAYERUNKNOWN'S BATTLEGROUNDS (PUBG) is a last-man-standing shooter being developed with community feedback.", image_url: "https://images.g2a.com/newlayout/323x433/1x1x0/0017f67ada95/59e60aeaae653a34fe0e9633")
Game.create(name: "Fifa 20", description: "FIFA 20 is a football simulation video game published by Electronic Arts as part of the FIFA series.", image_url: "https://lh3.googleusercontent.com/tjFx_uPUU3sOZxujIupK-DHCmJwbhBzUse6c80tTSqeSLeNILqHm7xo6uaEXrEEFm-aQkvFnS5BZmZhE5CRCqTgm")
Game.create(name: "Overwatch", description: "Overwatch is a multiplayer shooting game in which two teams of six players compete to capture and defend various objectives.", image_url: "https://blznav.akamaized.net/img/games/cards/card-overwatch-7eff92e1257149aa.jpg")
Game.create(name: "Star Wars Battlefront II", description: "You play an elite special forces soldier in a new Star Wars campaign that bridges the events between the films Star Wars: Return of the Jedi and Star Wars: The Force Awakens.", image_url: "https://originassets.akamaized.net/origin-com-store-final-assets-prod/193864/231.0x326.0/1049456_LB_231x326_en_US_%5E_2017-04-04-09-51-11_e44d270606e677e31a1c1b81cbf9167e55e5b016.jpg")
Game.create(name: "Cities: Skylines", description: "Cities: Skylines is a modern take on the classic city simulation. The game introduces new game play elements to realize the thrill and hardships of creating and maintaining a real city whilst expanding on some well-established tropes of the city building experience.", image_url: "https://cdn-products.eneba.com/resized-products/2b766fef7a55454205f9f2745abc9814_390x400_1x-0.jpg")
Game.create(name: "LEGO DC Super-Villains", description: "Lego DC Super-Villains is a Lego-themed action-adventure video game developed by Traveller's Tales, which serves as a spin-off to the Lego Batman trilogy and the fourth instalment in the Lego DC franchise.", image_url: "https://cdn-products.eneba.com/resized-products/uUmFwx0_390x400_1x-0.jpg")
Game.create(name: "Just Dance 2019", description: "Just Dance 2019 is a dance rhythm game developed by Ubisoft.", image_url: "https://ubistatic19-a.akamaihd.net/ubicomstatic/en-us/global/game-info/jd2019-ubicom-gameinfo-launch_boxart_ncsa-02-348x434_325155.jpg")
Game.create(name: "Super Mario 3D World", description: "Super Mario 3D World is a platform video game in the Super Mario series developed and published by Nintendo for their Wii U home video game console.", image_url: "https://upload.wikimedia.org/wikipedia/en/thumb/5/5e/Super_Mario_3D_World_box_art.jpg/220px-Super_Mario_3D_World_box_art.jpg")


Friend.create!([
  {user_id: 1, friend_user_id: 2},
  {user_id: 2, friend_user_id: 3},
  {user_id: 4, friend_user_id: 3},
  {user_id: 5, friend_user_id: 1},
  {user_id: 5, friend_user_id: 2},
])

GamesUser.create!([
  {user_id: 1, game_id: 2},
  {user_id: 1, game_id: 1},
  {user_id: 5, game_id: 4},
  {user_id: 2, game_id: 1},
  {user_id: 1, game_id: 3},
  {user_id: 5, game_id: 3},
])