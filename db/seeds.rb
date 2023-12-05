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

user1 = User.create!(email: "julientest@syja.fr", password: 123444)

Course.create!(user_id: user1.id, title: 'Tuto cuisson purée', summarize: 'Un incroyable open-office sur les méthodes de cuissons les plus Texanaises de tout le Texas, certifié par les Texans eux même.')
Course.create!(user_id: user1.id, title: 'Les pingouins conspirationnistes', summarize: "Une enquête approfondie sur une colonie de pingouins qui semblent croire en des théories du complot étranges et complotent secrètement pour prendre le contrôle de l'Antarctique.")
Course.create!(user_id: user1.id, title: 'La grammaire extraterrestre', summarize: "Des linguistes découvrent une nouvelle langue extraterrestre qui utilise uniquement des emojis pour communiquer. Les chercheurs tentent de déchiffrer cette grammaire inhabituelle pour comprendre le message caché derrière les symboles." )
Course.create!(user_id: user1.id, title: 'La révolution des objets inanimés', summarize: "Des objets inanimés, tels que des chaises, des stylos et des lampes, commencent soudainement à manifester une conscience et à revendiquer des droits. Une révolution inattendue des objets inanimés éclate, avec des manifestations dans les rues et des exigences pour une égalité des droits. Les humains doivent maintenant naviguer dans un monde où même les objets du quotidien ont une voix et des opinions.")
Course.create!(user_id: user1.id, title: 'Le championnat du monde de lancer de spaghettis cuite', summarize: "Des athlètes du monde entier se rassemblent pour participer à un championnat où la discipline phare est le lancer de spaghettis. Les participants doivent maîtriser l'art du lancer précis et puissant pour remporter le titre de champion du monde. Des règles strictes régissent la taille, la cuisson et la sauce des spaghettis utilisés.")
puts "Crée"

Library.create(name: "Tchat de la bibliothèque")
