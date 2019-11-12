# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Schedule.create(event: "Feed cats", start_time: Time.now())

User.create(User id: 1, email: "calvin@klein.com", encrypted_password: "$2a$11$ASqHPGtnarC5ticMYSnPnOmgTSFQ45bDjQX2xMkqXAej1abifUuI.", created_at: "2019-11-11 10:16:36", updated_at: "2019-11-11 10:16:36", online_status: nil, show_status: nil)