# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Schedule.create(event: "Feed cats", start_time: Time.now())

User.create(User id: 1, email: "calvin@klein.com", encrypted_password: "$2a$11$ASqHPGtnarC5ticMYSnPnOmgTSFQ45bDjQX2xMkqXAej1abifUuI.", created_at: "2019-11-11 10:16:36", updated_at: "2019-11-11 10:16:36", online_status: nil, show_status: nil)


Game.create(game_name: "Fortnite", game_description: "The game sees 100 players land onto the same map and then take each other on, the last player standing wins.", game_image: "https://cdn.images.express.co.uk/img/dynamic/143/590x/Fortnite-event-1189982.jpg?r=1570993306539")
Game.create(game_name: "RoBlox", game_description: "Roblox is essentially a vast library of mini-games that have been created by other people.", game_image: "https://cdn.vox-cdn.com/thumbor/lkE1JeL4S00R-OSTymR5hEXbo9I=/0x0:1920x821/1200x800/filters:focal(807x258:1113x564)/cdn.vox-cdn.com/uploads/chorus_image/image/64904047/roblox.0.png")
Game.create(game_name: "Minecraft", game_description: "The game allows players to build with a variety of different blocks in a 3D procedurally generated world, requiring creativity from players.", game_image: "https://upload.wikimedia.org/wikipedia/en/5/51/Minecraft_cover.png")
Game.create(game_name: "PUBG PlayerUnknown’s Battleground", game_description: "PLAYERUNKNOWN'S BATTLEGROUNDS is a last-man-standing shooter being developed with community feedback.", game_image: "https://images.g2a.com/newlayout/323x433/1x1x0/0017f67ada95/59e60aeaae653a34fe0e9633")
Game.create(game_name: "Fifa 2020", game_description: "FIFA 20 is a football simulation video game published by Electronic Arts as part of the FIFA series.", game_image: "https://lh3.googleusercontent.com/tjFx_uPUU3sOZxujIupK-DHCmJwbhBzUse6c80tTSqeSLeNILqHm7xo6uaEXrEEFm-aQkvFnS5BZmZhE5CRCqTgm")

