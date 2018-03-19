# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  Client.create(name: Faker::Lorem.word.capitalize, category: rand(0..1))
end

# sample web app data
# Mozilla/5.0 (iPhone9,3; U; CPU iPhone OS 10_0_1 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) Version/10.0 Mobile/14A403 Safari/602.1

# sample mobile app data
# Myapp/1 Dalvik/2.1.0 (Linux; U; Android 6.0.1; vivo 1610 Build/MMB29M)

# testing /device api for web app
# client_id = Client.first.client_id
# data = "Mozilla/5.0 (iPhone9,3; U; CPU iPhone OS 10_0_1 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) Version/10.0 Mobile/14A403 Safari/602.1"
# session_id = "123456"
# response = RestClient.post 'http://localhost:3000/device', {client_id: client_id, data: data, session_id: session_id}
# json_res = JSON.parse(response)

# testing /device api for mobile app
# client_id = Client.first.client_id
# data = "Myapp/1 Dalvik/2.1.0 (Linux; U; Android 6.0.1; vivo 1610 Build/MMB29M)"
# session_id = "123456"
# response = RestClient.post 'http://localhost:3000/device', {client_id: client_id, data: data, session_id: session_id}
# json_res = JSON.parse(response)
