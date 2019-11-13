# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Schedule.create(event: "Feed cats", start_time: Time.now())

User.create!([
  {email: "1test@gmail.com", username: "1testuser", password: "password", admin: false},
  {email: "2test@gmail.com", username: "2testuser", password: "password", admin: false},
  {email: "3test@gmail.com", username: "3testuser", password: "password", admin: false},
  {email: "4test@gmail.com", username: "4testuser", password: "password", admin: false},
  {email: "admin@gmail.com", username: "testadmin", password: "password", admin: true}
])

Game.create(name: "Fortnite", description: "The game sees 100 players land onto the same map and then take each other on, the last player standing wins.", image_url: "https://cdn.images.express.co.uk/img/dynamic/143/590x/Fortnite-event-1189982.jpg?r=1570993306539")
Game.create(name: "RoBlox", description: "Roblox is essentially a vast library of mini-games that have been created by other people.", image_url: "https://cdn.vox-cdn.com/thumbor/lkE1JeL4S00R-OSTymR5hEXbo9I=/0x0:1920x821/1200x800/filters:focal(807x258:1113x564)/cdn.vox-cdn.com/uploads/chorus_image/image/64904047/roblox.0.png")
Game.create(name: "Minecraft", description: "The game allows players to build with a variety of different blocks in a 3D procedurally generated world, requiring creativity from players.", image_url: "https://upload.wikimedia.org/wikipedia/en/5/51/Minecraft_cover.png")
Game.create(name: "PUBG PlayerUnknown’s Battleground", description: "PLAYERUNKNOWN'S BATTLEGROUNDS is a last-man-standing shooter being developed with community feedback.", image_url: "https://images.g2a.com/newlayout/323x433/1x1x0/0017f67ada95/59e60aeaae653a34fe0e9633")
Game.create(name: "Fifa 2020", description: "FIFA 20 is a football simulation video game published by Electronic Arts as part of the FIFA series.", image_url: "https://lh3.googleusercontent.com/tjFx_uPUU3sOZxujIupK-DHCmJwbhBzUse6c80tTSqeSLeNILqHm7xo6uaEXrEEFm-aQkvFnS5BZmZhE5CRCqTgm")

Friend.create!([
  {user_id: 1, friend_user_id: 2},
  {user_id: 2, friend_user_id: 3}, 
  {user_id: 4, friend_user_id: 3}, 
  {user_id: 5, friend_user_id: 1}, 
])


Games_user.create!([
  {user_id: 1, game_id: 2},
  {user_id: 5, game_id: 4}, 
  {user_id: 2, game_id: 1},
  {user_id: 1, game_id: 3},
  {user_id: 5, game_id: 3}, 
])

