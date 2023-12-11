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
user0 = User.create!(first_name: "Foxy", last_name: "Classy", email: "aymard@share.fr", batch: 1438, password: 123444)
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

course1 = Course.create!(date:, user_id: user1.id, title: 'Introduction à JS', summarize: "Cours introduisant les bases de javascript. Lecture simple et rapide, privilégiez tout de même la pratique à la lecture. JavaScript est un langage de programmation côté client utilisé pour rendre les pages web interactives. Il permet de manipuler le contenu de la page, de répondre aux événements utilisateur et d'interagir avec les serveurs web.", category: "javascript")
course2 = Course.create!(date:, user_id: user1.id, title: "Introduction à l'HTML", summarize: "Brève introduction à l'HTML. HTML est le langage de balisage standard utilisé pour créer et structurer des pages web. Il utilise une syntaxe basée sur des balises pour définir la structure et le contenu d'une page web.", category: "html")
course3 = Course.create!(date:, user_id: user1.id, title: 'Introduction à Ruby', summarize: "Ruby est un langage de programmation interprété, orienté objet et axé sur la simplicité et la productivité. Il est apprécié pour sa syntaxe élégante, sa flexibilité et sa facilité d'apprentissage. Ruby on Rails est un framework web populaire écrit en Ruby.", category: "ruby")
course4 = Course.create!(date:, user_id: user1.id, title: 'Intro CSS (Cascading Style Sheets)', summarize: "CSS est un langage de style utilisé pour définir la présentation et la mise en page des éléments HTML sur une page web. Il permet de contrôler l'apparence visuelle, les couleurs, les polices, les marges, etc.", category: "css")
course5 = Course.create!(date:, user_id: user1.id, title: 'Cours plus avancé sur Ruby', summarize: "Ruby est un langage de programmation interprété, orienté objet et axé sur la simplicité et la productivité. Il est apprécié pour sa syntaxe élégante, sa flexibilité et sa facilité d'apprentissage. Ruby on Rails est un framework web populaire écrit en Ruby. Dans ce cours, vous apprendrez Ruby plus profondement afin de mieux comprendre le fonctionnement de son framework, Ruby On Rails.", category: "ruby")
course6 = Course.create!(date:, user_id: user1.id, title: 'Introduction à Rails', summarize: "Un framework est un ensemble structuré d'outils, de bibliothèques et de conventions de codage qui facilite le développement d'applications. Les frameworks aident les développeurs en fournissant une structure organisée, des fonctionnalités prêtes à l'emploi et des bonnes pratiques. Ruby on Rails, souvent abrégé en Rails, est un framework open source écrit en langage Ruby. Il a été créé par David Heinemeier Hansson et est sorti pour la première fois en 2004. Rails suit le paradigme de conception Model-View-Controller (MVC) et est conçu pour simplifier le processus de développement d'applications web en fournissant une structure organisée et des conventions de codage.", category: "ruby")
course7 = Course.create!(date:, user_id: user1.id, title: 'Introduction à ReactJS', summarize: "React.js est une bibliothèque JavaScript open source développée par Facebook. Elle est utilisée pour la construction d'interfaces utilisateur (UI) interactives et dynamiques. React permet de créer des composants réutilisables et facilite la gestion de l'état d'une application. Il utilise une approche déclarative pour décrire comment l'interface utilisateur doit se comporter en fonction de l'état de l'application, facilitant ainsi la création d'interfaces utilisateur complexes.", category: "javascript")
course8 = Course.create!(date:, user_id: user1.id, title: 'Introduction à StimulusJS', summarize: "Stimulus.js est une petite bibliothèque JavaScript développée par Basecamp. Elle est conçue pour ajouter de l'interactivité aux pages web sans la complexité d'un framework JavaScript complet. Stimulus se concentre sur l'amélioration des pages HTML existantes en ajoutant des comportements à l'aide de contrôleurs. Il suit le modèle MVVM (Model-View-ViewModel) et est souvent utilisé pour enrichir des pages générées côté serveur en ajoutant des interactions côté client de manière progressive", category: "javascript")
course9 = Course.create!(date:, user_id: user1.id, title: 'Introduction à Bootstrap', summarize: "Bootstrap est un framework front-end open source développé par Twitter. Il offre une collection d'outils, de styles et de composants prêts à l'emploi pour simplifier le processus de développement web. Bootstrap est basé sur HTML, CSS et JavaScript, et il permet aux développeurs de créer rapidement des interfaces utilisateur réactives et esthétiques. Il propose une grille flexible, des composants tels que des boutons et des formulaires stylisés, ainsi que des utilitaires CSS pour faciliter la mise en page et la personnalisation. Bootstrap favorise la conception responsive et la création de sites web mobiles conviviaux.", category: "css")
course10 = Course.create!(date:, user_id: user1.id, title: 'Cours avancé sur HTML', summarize: "Après une bonne introduction à l'HTML, il est important d'aller plus loin dans l'apprentissage de celui-ci pour des pages web complètes et uniques. Have fun dans l'apprentissage de ce langage simple au demeurant !", category: "html")
course11 = Course.create!(date:, user_id: user1.id, title: 'Cours avancé sur le CSS', summarize: "Il y a des centaines de millers de façon de personnalisé son site internet. Grace à ce cours, rendez votre site plus unique et à votre goût, c'est quand même plus intéressant ! ", category: "css")
course12 = Course.create!(date:, user_id: user1.id, title: 'Introduction au MVC', summarize: "Le MVC (Modèle-Vue-Contrôleur) est un modèle de conception logicielle qui divise une application en trois composants principaux : le Model, le View, le Controller. Cette séparation des responsabilités facilite la maintenance, l'extensibilité et la réutilisation du code dans une application. Apprenez-en plus grace à ce cours, c'est une notion importante.", category: "ruby")
course13 = Course.create!(date:, user_id: user1.id, title: "Introduction à l'OOP", summarize: "L'OOP (Programmation Orientée Objet) est un paradigme de programmation qui organise le code autour d'objets. Un objet est une instance d'une classe, qui définit un modèle pour créer des objets avec des propriétés (attributs) et des comportements (méthodes). L'OOP favorise la réutilisabilité, la modularité et la structuration du code en regroupant des fonctionnalités connexes dans des entités autonomes. Les principaux concepts de l'OOP incluent l'encapsulation, l'héritage et le polymorphisme.", category: "ruby")
course14 = Course.create!(date:, user_id: user1.id, title: 'Intro à Tailwind CSS', summarize: "Tailwind CSS est un framework CSS utilitaire qui facilite la création de mises en page et de styles en utilisant des classes utilitaires directement dans le code HTML. Plutôt que de définir des styles dans des feuilles de style séparées, Tailwind propose une approche de classe utilitaire pour appliquer des styles directement aux éléments HTML. Il offre un ensemble complet de classes pour des propriétés telles que les marges, les couleurs, les polices, les tailles, etc. Tailwind favorise la rapidité de développement en éliminant la nécessité de créer des styles personnalisés, tout en offrant une flexibilité pour personnaliser et étendre les styles selon les besoins du projet.", category: "css")
course15 = Course.create!(date:, user_id: user1.id, title: 'Cours avancé sur Rails', summarize: "Rails est un bon framework simple d'accès et d'apprentissage. Apprenez-en plus via ce cours, avec notamment les Callbacks, les Associations Avancées, le Devise, les API... Et plus encore ! Amusez-vous bien.", category: "ruby")


course1.document.attach(io: File.open('app/assets/images/javascriptcours.pdf'), filename: 'javascriptcours.pdf')
course1.save
course2.document.attach(io: File.open('app/assets/images/htmlcours.pdf'), filename: 'htmlcours.pdf')
course2.save
course3.document.attach(io: File.open('app/assets/images/rubycours.pdf'), filename: 'rubycours.pdf')
course3.save
course4.document.attach(io: File.open('app/assets/images/csscours.pdf'), filename: 'csscours.pdf')
course4.save
course5.document.attach(io: File.open('app/assets/images/coursrubynumero2.pdf'), filename: 'coursrubynumero2.pdf')
course5.save
course6.document.attach(io: File.open('app/assets/images/coursrails.pdf'), filename: 'coursrails.pdf')
course6.save
course7.document.attach(io: File.open('app/assets/images/reactjscours.pdf'), filename: 'reactjscours.pdf')
course7.save
course8.document.attach(io: File.open('app/assets/images/stimulusjscours.pdf'), filename: 'stimulusjscours.pdf')
course8.save
course9.document.attach(io: File.open('app/assets/images/bootstrapcours.pdf'), filename: 'bootstrapcours.pdf')
course9.save
course10.document.attach(io: File.open('app/assets/images/html2cours.pdf'), filename: 'html2cours.pdf')
course10.save
course11.document.attach(io: File.open('app/assets/images/css2cours.pdf'), filename: 'css2cours.pdf')
course11.save
course12.document.attach(io: File.open('app/assets/images/mvccours.pdf'), filename: 'mvccours.pdf')
course12.save
course13.document.attach(io: File.open('app/assets/images/oopcours.pdf'), filename: 'oopcours.pdf')
course13.save
course14.document.attach(io: File.open('app/assets/images/tailwindcours.pdf'), filename: 'tailwindcours.pdf')
course14.save
course15.document.attach(io: File.open('app/assets/images/rails2cours.pdf'), filename: 'rails2cours.pdf')
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
