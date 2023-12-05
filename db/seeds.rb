# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

# Création d'utilisateurs

Course.destroy_all
User.destroy_all
Library.destroy_all


user1 = User.create!(first_name: "Juju", last_name: "Magic", email: "julien@share.fr", password: 123444)
user2 = User.create!(first_name: "Sarah", last_name: "LaReusta", email: "sarah@share.fr", password: 123444)
user3 = User.create!(first_name: "Yac", last_name: "Starzou", email: "yacine@share.fr", password: 123444)
user4 = User.create!(first_name: "Foxy", last_name: "Classy", email: "aymard@share.fr", password: 123444)


course1 = Course.create!(user_id: user1.id, title: 'Tuto cuisson purée', summarize: 'Un incroyable open-office sur les méthodes de cuissons les plus Texanaises de tout le Texas, certifié par les Texans eux même.')
course2 = Course.create!(user_id: user1.id, title: 'Les pingouins conspirationnistes', summarize: "Une enquête approfondie sur une colonie de pingouins qui semblent croire en des théories du complot étranges et complotent secrètement pour prendre le contrôle de l'Antarctique.")
course3 = Course.create!(user_id: user1.id, title: 'La grammaire extraterrestre', summarize: "Des linguistes découvrent une nouvelle langue extraterrestre qui utilise uniquement des emojis pour communiquer. Les chercheurs tentent de déchiffrer cette grammaire inhabituelle pour comprendre le message caché derrière les symboles." )
course4 = Course.create!(user_id: user1.id, title: 'La révolution des objets inanimés', summarize: "Des objets inanimés, tels que des chaises, des stylos et des lampes, commencent soudainement à manifester une conscience et à revendiquer des droits. Une révolution inattendue des objets inanimés éclate, avec des manifestations dans les rues et des exigences pour une égalité des droits. Les humains doivent maintenant naviguer dans un monde où même les objets du quotidien ont une voix et des opinions.")
course5 = Course.create!(user_id: user1.id, title: 'Le championnat du monde de lancer de spaghettis cuite', summarize: "Des athlètes du monde entier se rassemblent pour participer à un championnat où la discipline phare est le lancer de spaghettis. Les participants doivent maîtriser l'art du lancer précis et puissant pour remporter le titre de champion du monde. Des règles strictes régissent la taille, la cuisson et la sauce des spaghettis utilisés.")



library_1 = Library.create(name: "Chat de la bibliothèque")

course1.document.attach(io: File.open('app/assets/images/test.pdf'),filename: 'test.pdf' )
course1.save
course2.document.attach(io: File.open('app/assets/images/test.pdf'),filename: 'test.pdf' )
course2.save
course3.document.attach(io: File.open('app/assets/images/test.pdf'),filename: 'test.pdf' )
course3.save
course4.document.attach(io: File.open('app/assets/images/test.pdf'),filename: 'test.pdf' )
course4.save
course5.document.attach(io: File.open('app/assets/images/test.pdf'),filename: 'test.pdf' )
course5.save

puts "champion"