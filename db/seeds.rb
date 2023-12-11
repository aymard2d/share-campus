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
Message.destroy_all
Event.destroy_all

date = Date.today
time = Time.now
starting_date = Date.today
event_time = Time
ending_date = Date.tomorrow

library_1 = Library.create(name: "Chat de la bibliothèque")

# SEED DES UTILISATEURS

user99 = User.create!(first_name: "Share", last_name: "admin", email: "share@share.fr", batch: 0000, password: 123444)
user0 = User.create!(first_name: "Foxy", last_name: "Classy", email: "aymardn@share.fr", batch: 1438, password: 123444)
user1 = User.create!(first_name: "Juju", last_name: "Magic", email: "julien@share.fr", batch: 1438, password: 123444)
user2 = User.create!(first_name: "Sarah", last_name: "LaReusta", email: "sarah@share.fr", batch: 1438, password: 123444)
user3 = User.create!(first_name: "Yac", last_name: "Starzou", email: "yacine@share.fr", batch: 1438, password: 123444)
user4 = User.create!(first_name: "Valerian", last_name: "Neirobi", email: "valerian@share.fr", batch: 1439, password: 123444)
user5 = User.create!(first_name: "Debo", last_name: "Ticket", email: "debo@share.fr", batch: 1439, password: 123444)
user6 = User.create!(first_name: "Lao", last_name: "TourdePiz", email: "lao@share.fr", batch: 1439, password: 123444)
user7 = User.create!(first_name: "Kevin", last_name: "GPT", email: "kevin@share.fr", batch: 1439, password: 123444)
user8 = User.create!(first_name: "Clo", last_name: "EpouseMoi", email: "clo@share.fr", batch: 1437, password: 123444)
user9 = User.create!(first_name: "Djadja", last_name: "TudeadCa", email: "djadja@share.fr", batch: 1437, password: 123444)
user10 = User.create!(first_name: "Fred", last_name: "NumberOneEver", email: "fred@share.fr", batch: 1437, password: 123444)
user11 = User.create!(first_name: "Qian", last_name: "PrononceTien", email: "quian@share.fr", batch: 1437, password: 123444)
user12 = User.create!(first_name: "Maelie", last_name: "DbDrop.forbidden", email: "maelie@share.fr", batch: 1440, password: 123444)
user13 = User.create!(first_name: "Eva", last_name: "5hoursTicket", email: "eva@share.fr", batch: 1440, password: 123444)
user14 = User.create!(first_name: "Rika", last_name: "WhatTheHeck", email: "rikad@share.fr", batch: 1440, password: 123444)
user15 = User.create!(first_name: "Alex", last_name: "WeAllMissedYou", email: "alex@share.fr", batch: 1440, password: 123444)
user16 = User.create!(first_name: "Benoit", last_name: "CssRubyJSC++", email: "benoit@share.fr", batch: 1440, password: 123444)
user17 = User.create!(first_name: "Natalia", last_name: "MissYou", email: "natalia@share.fr", batch: 1440, password: 123444)
user18 = User.create!(first_name: "Florine  ", last_name: "Shyny puppy", email: "florine@share.fr", batch: 1440, password: 123444)
user19 = User.create!(first_name: "Claire", last_name: "BatchManager.exist?", email: "claire@share.fr", batch: 1440, password: 123444)
user20 = User.create!(first_name: "Florent", last_name: "Et...voilà", email: "florent@share.fr", batch: 1440, password: 123444)
user21 = User.create!(first_name: "Oliv", last_name: "GitPushOriginMain.allowed", email: "oliv@share.fr", batch: 1440, password: 123444)
user22 = User.create!(first_name: "Hugo", last_name: "LeSangdelaVeine", email: "hugo@share.fr", batch: 1440, password: 123444)


user0.document.attach(io: File.open('app/assets/images/aymard.jpg'),filename: 'aymard.jpg' )
user0.save
user1.document.attach(io: File.open('app/assets/images/juju.png'),filename: 'juju.png' )
user1.save
user2.document.attach(io: File.open('app/assets/images/sarah.jpg'),filename: 'sarah.jpg' )
user2.save
user3.document.attach(io: File.open('app/assets/images/yacine.jpg'),filename: 'yacine.jpg' )
user3.save
user4.document.attach(io: File.open('app/assets/images/valerian.jpg'),filename: 'valerian.jpg' )
user4.save
user5.document.attach(io: File.open('app/assets/images/debo.jpg'),filename: 'debo.jpg' )
user5.save
user6.document.attach(io: File.open('app/assets/images/lao.jpg'),filename: 'lao.jpg' )
user6.save
user7.document.attach(io: File.open('app/assets/images/kevin.jpg'),filename: 'kevin.jpg' )
user7.save
user8.document.attach(io: File.open('app/assets/images/clo.jpg'),filename: 'clo.jpg' )
user8.save
user9.document.attach(io: File.open('app/assets/images/djadja.jpg'),filename: 'djadja.jpg' )
user9.save
user10.document.attach(io: File.open('app/assets/images/fred.png'),filename: 'fred.png' )
user10.save
user11.document.attach(io: File.open('app/assets/images/qian.jpg'),filename: 'qian.jpg' )
user11.save
user12.document.attach(io: File.open('app/assets/images/maelie.jpg'),filename: 'maelie.jpg' )
user12.save
user13.document.attach(io: File.open('app/assets/images/eva.jpg'),filename: 'eva.jpg' )
user13.save
user14.document.attach(io: File.open('app/assets/images/rika.jpg'),filename: 'rika.jpg' )
user14.save
user15.document.attach(io: File.open('app/assets/images/alex.jpg'),filename: 'alex.jpg' )
user15.save
user16.document.attach(io: File.open('app/assets/images/benoit.jpg'),filename: 'benoit.jpg' )
user16.save
user17.document.attach(io: File.open('app/assets/images/natalia.jpg'),filename: 'natalia.jpg' )
user17.save
user18.document.attach(io: File.open('app/assets/images/florine.webp'),filename: 'florine.webp' )
user18.save
user19.document.attach(io: File.open('app/assets/images/claire.jpg'),filename: 'claire.jpg' )
user19.save
user20.document.attach(io: File.open('app/assets/images/florent.jpg'),filename: 'florent.jpg' )
user20.save
user21.document.attach(io: File.open('app/assets/images/olivier.jpg'),filename: 'olivier.jpg' )
user21.save
user22.document.attach(io: File.open('app/assets/images/hugo.jpg'),filename: 'hugo.jpg' )
user22.save

# SEED DES COURS

course1 = Course.create!(date:, user_id: user1.id, title: 'Tuto cuisson purée', summarize: 'Un incroyable open-office sur les méthodes de cuissons les plus Texanaises de tout le Texas, certifié par les Texans eux même.')
course2 = Course.create!(date:, user_id: user1.id, title: 'Les pingouins conspirationnistes', summarize: "Une enquête approfondie sur une colonie de pingouins qui semblent croire en des théories du complot étranges et complotent secrètement pour prendre le contrôle de l'Antarctique.", category: "javascript")
course3 = Course.create!(date:, user_id: user1.id, title: 'La grammaire extraterrestre', summarize: "Des linguistes découvrent une nouvelle langue extraterrestre qui utilise uniquement des emojis pour communiquer. Les chercheurs tentent de déchiffrer cette grammaire inhabituelle pour comprendre le message caché derrière les symboles.", category: "html" )
course4 = Course.create!(date:, user_id: user1.id, title: 'La révolution des objets inanimés', summarize: "Des objets inanimés, tels que des chaises, des stylos et des lampes, commencent soudainement à manifester une conscience et à revendiquer des droits. Une révolution inattendue des objets inanimés éclate, avec des manifestations dans les rues et des exigences pour une égalité des droits. Les humains doivent maintenant naviguer dans un monde où même les objets du quotidien ont une voix et des opinions.", category: "css")
course5 = Course.create!(date:, user_id: user1.id, title: 'Le championnat du monde de lancer de spaghettis cuite', summarize: "Des athlètes du monde entier se rassemblent pour participer à un championnat où la discipline phare est le lancer de spaghettis. Les participants doivent maîtriser l'art du lancer précis et puissant pour remporter le titre de champion du monde. Des règles strictes régissent la taille, la cuisson et la sauce des spaghettis utilisés.", category: "ruby")
course6 = Course.create!(date:, user_id: user1.id, title: 'Le championnat du monde de lancer de spaghettis cuite', summarize: "Des athlètes du monde entier se rassemblent pour participer à un championnat où la discipline phare est le lancer de spaghettis. Les participants doivent maîtriser l'art du lancer précis et puissant pour remporter le titre de champion du monde. Des règles strictes régissent la taille, la cuisson et la sauce des spaghettis utilisés.", category: "ruby")
course7 = Course.create!(date:, user_id: user1.id, title: 'Le championnat du monde de lancer de spaghettis cuite', summarize: "Des athlètes du monde entier se rassemblent pour participer à un championnat où la discipline phare est le lancer de spaghettis. Les participants doivent maîtriser l'art du lancer précis et puissant pour remporter le titre de champion du monde. Des règles strictes régissent la taille, la cuisson et la sauce des spaghettis utilisés.", category: "ruby")
course8 = Course.create!(date:, user_id: user1.id, title: 'Le championnat du monde de lancer de spaghettis cuite', summarize: "Des athlètes du monde entier se rassemblent pour participer à un championnat où la discipline phare est le lancer de spaghettis. Les participants doivent maîtriser l'art du lancer précis et puissant pour remporter le titre de champion du monde. Des règles strictes régissent la taille, la cuisson et la sauce des spaghettis utilisés.", category: "ruby")
course9 = Course.create!(date:, user_id: user1.id, title: 'Le championnat du monde de lancer de spaghettis cuite', summarize: "Des athlètes du monde entier se rassemblent pour participer à un championnat où la discipline phare est le lancer de spaghettis. Les participants doivent maîtriser l'art du lancer précis et puissant pour remporter le titre de champion du monde. Des règles strictes régissent la taille, la cuisson et la sauce des spaghettis utilisés.", category: "ruby")
course10 = Course.create!(date:, user_id: user1.id, title: 'Le championnat du monde de lancer de spaghettis cuite', summarize: "Des athlètes du monde entier se rassemblent pour participer à un championnat où la discipline phare est le lancer de spaghettis. Les participants doivent maîtriser l'art du lancer précis et puissant pour remporter le titre de champion du monde. Des règles strictes régissent la taille, la cuisson et la sauce des spaghettis utilisés.", category: "ruby")
course11 = Course.create!(date:, user_id: user1.id, title: 'Le championnat du monde de lancer de spaghettis cuite', summarize: "Des athlètes du monde entier se rassemblent pour participer à un championnat où la discipline phare est le lancer de spaghettis. Les participants doivent maîtriser l'art du lancer précis et puissant pour remporter le titre de champion du monde. Des règles strictes régissent la taille, la cuisson et la sauce des spaghettis utilisés.", category: "ruby")
course12 = Course.create!(date:, user_id: user1.id, title: 'Le championnat du monde de lancer de spaghettis cuite', summarize: "Des athlètes du monde entier se rassemblent pour participer à un championnat où la discipline phare est le lancer de spaghettis. Les participants doivent maîtriser l'art du lancer précis et puissant pour remporter le titre de champion du monde. Des règles strictes régissent la taille, la cuisson et la sauce des spaghettis utilisés.", category: "ruby")
course13 = Course.create!(date:, user_id: user1.id, title: 'Le championnat du monde de lancer de spaghettis cuite', summarize: "Des athlètes du monde entier se rassemblent pour participer à un championnat où la discipline phare est le lancer de spaghettis. Les participants doivent maîtriser l'art du lancer précis et puissant pour remporter le titre de champion du monde. Des règles strictes régissent la taille, la cuisson et la sauce des spaghettis utilisés.", category: "ruby")
course14 = Course.create!(date:, user_id: user1.id, title: 'Le championnat du monde de lancer de spaghettis cuite', summarize: "Des athlètes du monde entier se rassemblent pour participer à un championnat où la discipline phare est le lancer de spaghettis. Les participants doivent maîtriser l'art du lancer précis et puissant pour remporter le titre de champion du monde. Des règles strictes régissent la taille, la cuisson et la sauce des spaghettis utilisés.", category: "ruby")
course15 = Course.create!(date:, user_id: user1.id, title: 'Le championnat du monde de lancer de spaghettis cuite', summarize: "Des athlètes du monde entier se rassemblent pour participer à un championnat où la discipline phare est le lancer de spaghettis. Les participants doivent maîtriser l'art du lancer précis et puissant pour remporter le titre de champion du monde. Des règles strictes régissent la taille, la cuisson et la sauce des spaghettis utilisés.", category: "ruby")


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
course6.document.attach(io: File.open('app/assets/images/test.pdf'),filename: 'test.pdf' )
course6.save
course7.document.attach(io: File.open('app/assets/images/test.pdf'),filename: 'test.pdf' )
course7.save
course8.document.attach(io: File.open('app/assets/images/test.pdf'),filename: 'test.pdf' )
course8.save
course9.document.attach(io: File.open('app/assets/images/test.pdf'),filename: 'test.pdf' )
course9.save
course10.document.attach(io: File.open('app/assets/images/test.pdf'),filename: 'test.pdf' )
course10.save
course11.document.attach(io: File.open('app/assets/images/test.pdf'),filename: 'test.pdf' )
course11.save
course12.document.attach(io: File.open('app/assets/images/test.pdf'),filename: 'test.pdf' )
course12.save
course13.document.attach(io: File.open('app/assets/images/test.pdf'),filename: 'test.pdf' )
course13.save
course14.document.attach(io: File.open('app/assets/images/test.pdf'),filename: 'test.pdf' )
course14.save
course15.document.attach(io: File.open('app/assets/images/test.pdf'),filename: 'test.pdf' )
course15.save


# SEED DES EVENEMENTS
event1 = Event.create!(user_id: user1.id, created_by: "Sandra", starting_date: , title: "Comment réussir son pitch", category: "Conférence", description: "Pas envie de pitcher son projet de fin de batch comme tout le monde ? Envie d'exotisme et d'originalité ? Retrouvez toutes nos astuces pour vous faire ouvrir en deux par les profs juste après votre démonstration ! Et sans compter les remarques sur la CSS hein !")
event2 = Event.create!(user_id: user1.id, created_by: "Juju", starting_date: , title: "Le db.drop : la bonne utilisation", category: "Coaching", description: "Tout bon dev senior commet des erreurs. Sauf moi. Pour vous, en cas de missplay, le db;drop est LA solution à tous vos problèmes. Suivez le guide.")
event3 = Event.create!(user_id: user1.id, created_by: "Sarah", starting_date: , title: "Ah mais j'suis bête. Ah non en fait.", category: "Coaching", description: "Envie de faire croire aux autres que vous vous dévalorisez pour qu'ils vous fassent des compliments ? Faites semblant de faire des erreurs puis corrigez-les directement. N'oubliez pas le cri de joie qui accompagne chaque code réparé.")
event4 = Event.create!(user_id: user1.id, created_by: "Debo", starting_date: , title: "Ticket: plus qu'un outil, une passion", category: "Témoignage", description: "Votre batch manager ne sait pas que vous êtes rémunée au nombre de tickets ? Profitez-en. Ouvrez-en plusieurs en même temps comme des tables de Poker.")
event5 = Event.create!(user_id: user1.id, created_by: "Maelie", starting_date: , title: "JULIEN, ARRETE DE DB.DROP !", category: "CAMPUS ALERT", description: "Je te jure, au prochain db.drop, je te vire du campus.")
event6 = Event.create!(user_id: user1.id, created_by: "Eva", starting_date: , title: "Ticket : les 5 astuces", category: "Conférence", description: "Comment optimiser vos tickets pour être payé le moins possible par votre employeur ? Retrouvez dans ce tutoriel tous mes trickshots pour finir la journée plus pauvre que je l'ai commencée.")
event7 = Event.create!(user_id: user1.id, created_by: "SYJA CORP", starting_date: , title: "Code war battle", category: "Tournoi", description: "Grand tournoi de codes en équipe. Le tournoi aura lieu à la bibli. Il se déroule en 3 manches : JS / CSS et RUBY. La team gagnante affronte les profs de ces discplines là.")
event8 = Event.create!(user_id: user1.id, created_by: "Le Wagon", starting_date: , title: "Soirée de fin de batch", category: "Soirée", description: "Vous êtes en distanciel et terminez une formation ? Que cela ne vous empêche pas de vous coller une mine grâce à notre évènement exclusif : je me cyber déboite la tête ! Une simulation de cyber gueule de bois est offerte pour chaque entrée.")
event9 = Event.create!(user_id: user1.id, created_by: "SYJA CORP", starting_date: , title: "Soirée de fin de batch 1438", category: "Soirée", description: "Une vraie soirée. Pas comme l'autre truc éclaté. Faut juste qu'on trouve la date et de la thune pour les billets de train de tout le monde ! En attendant, on se boit une mousse vant nos écrans, WOOHOO !")
event2 = Event.create!(user_id: user1.id, created_by: "Juju", starting_date: , title: "DB DROP", category: "CAMPUS ALERT", description: "J'suis admin, tu va fer kwa ? Lololololol.")



puts "champion"
