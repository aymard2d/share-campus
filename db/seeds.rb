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
Message.destroy_all
Library.destroy_all
Event.destroy_all
Amphi.destroy_all
User.destroy_all
Friendship.destroy_all

date = Date.today
time = Time.now
starting_date = Date.today
event_time = Time
ending_date = Date.tomorrow

library_1 = Library.create(name: "Chat de la bibliothèque")

# SEED DES UTILISATEURS


#user0.document.attach(io: File.open('app/assets/images/aymard.jpg'),filename: 'aymard.jpg' )

#user99 = User.create!(first_name: "Share", last_name: "admin", email: "share@share.fr", batch: 0000, password: 123444)
user0 = User.create!(first_name: "Foxy", last_name: "Classy", email: "aymard@share.fr", batch: 1438, password: 123444, description: "Student @LeWagon
Name Aymard de Dieuleveult, living in Boulogne-Billancourt. Age : 38 ans.
Was previously working as a co-founder of the first syndicate of 'Micro-entrepreneurs' UPSME to help people to make their own entreprise.
Starting my first workshop to become a web developer in Ruby. Can't wait to learn some crazy tricks.")
user1 = User.create!(first_name: "Juju", last_name: "Magic", email: "julien@share.fr", batch: 1438, password: 123444, description:"J'ai toujours été intéressé par l'informatique et toujours eu une approche aisé de celle-ci. Selon moi, être développeur est un métier d'avenir qui me correspond. Puis voilà j'ai 19 ans donc pas grand chose de plus à dire... 🤓")
user2 = User.create!(first_name: "Sarah", last_name: "LaReusta", email: "sarah@share.fr", batch: 1438, password: 123444, description: "Je m'apelle Sarah, j'ai 28 ans. Avant de me lancer dans le développement web, je travaillais en tant qu'assistante de livraisons. M'ennuyant à ce poste et n'ayant pas de perspective d'évolution, j'ai décidé de suivre la formation en développement web du Wagon afin de réorienter ma carrière.")
user3 = User.create!(first_name: "Yac", last_name: "Starzou", email: "yacine@share.fr", batch: 1438, password: 123444, description:"Hi ! I'm Yacine and I'm 22 years old. And after searching my vocation through the years, I want to learn code in order to start and growing in the digital world. 👨🏻‍💻")
user4 = User.create!(first_name: "Valerian", last_name: "Neirobi", email: "valerian@share.fr", batch: 1439, password: 123444, description: "I used to be chef I move to Kenya with my family! I was supposed to stay 1 year but now it is 6 years I am here! and learn coding is something I wanted since longtime, and I believe it can open lots of more opportunities!")
user5 = User.create!(first_name: "Debo", last_name: "Ticket", email: "debo@share.fr", batch: 1439, password: 123444, description:"
Après 10 ans dans le social, je souhaite me reconvertir après un licenciement dans le développement web, domaine qui m'intéresse depuis longtemps.")
user6 = User.create!(first_name: "Lao", last_name: "TourdePiz", email: "lao@share.fr", batch: 1439, password: 123444, description: "Hi,
I'm a Senior ecommerce manager, currently employed in Fnac Darty (France) with 14 years experience interested in entrepreneurship.
My goal is to learn coding in order to launch my own app/website and netlink with potential parters on my own or other entreprenarial projects.
I live in Italy (Milan) with my family.")
user7 = User.create!(first_name: "Kevin", last_name: "GPT", email: "kevin@share.fr", batch: 1439, password: 123444, description:"👋 Salut tout le monde ! Je suis Kévin Falck, et je suis vraiment enthousiaste de participer à cette formation en développement web. Depuis aussi longtemps que je m'en souvienne, l'informatique a été ma passion, et j'ai exploré le monde du web de manière autodidacte. 🌐

💻 J'ai toujours eu un faible pour créer des projets sur internet et donc le développement, j'aime particulièrement créer des sites sous WordPress, des boutiques en ligne, des serveurs privés de jeux-vidéo et peut-être bientôt des applications mobiles.")
user8 = User.create!(first_name: "Clo", last_name: "EpouseMoi", email: "clo@share.fr", batch: 1437, password: 123444, description: "En reconversion après des années passées dans la communication (relations presse et création de contenu). Je veux apprendre à coder pour changer de métier et de vie. J'espère pouvoir trouver un emploi dans la tech après Le Wagon.")
user9 = User.create!(first_name: "Djadja", last_name: "TudeadCa", email: "djadja@share.fr", batch: 1437, password: 123444, description: "Hello!
I just graduated from a Toursim Management school in Switzerland and I would like to learn code to help myself become freelance :)
After Le Wagon I intend to gain more confidence in coding with a nice a job out there and launch my freelance career soon!")
user10 = User.create!(first_name: "Fred", last_name: "NumberOneEver", email: "fred@share.fr", batch: 1437, password: 123444, description:"Diplômée d'un master en digital marketing et data analyse, j'ai eu la chance d'avoir quelques cours de code et c'est pourquoi j'aimerais en apprendre beaucoup plus sur le sujet et devenir développeuse web.")
user11 = User.create!(first_name: "Qian", last_name: "PrononceTien", email: "quian@share.fr", batch: 1437, password: 123444, description:"D’origine chinoise, je suis venu en France afin de poursuivre mes études après avoir fini ma Licence dans mon pays natal. Ayant obtenu un Master de FLE, je suis entré dans la vie active en tant qu’enseignent suppléant de chinois. D'un naturel créatif et ayant le sens du travail d’équipe, j’étais déjà très attiré par l’univers du numérique et de nouvelles technologies. J’ai décidé de me lancer dans l’aventure de ce Bootcamp du Wagon pour commencer une reconversion. Je suis content de faire connaissance avec vous, j’ai hâte que l’on passe des moments sympathiques et que l’on progresse tous ensemble dans cette formation !")
user12 = User.create!(first_name: "Maelie", last_name: "DbDrop.forbidden", email: "maelie@share.fr", batch: 1440, password: 123444, description:"Concepteur et Développeur Web Fullstack en freelance. J’ai fais le wagon.
Ce que je vous propose :
• Back-end (ruby on railsl)
• front-end (HTML, CSS, javascript, bootstrap)
• Mise en ligne de votre site
Au quotidien, je suis une personne enthousiaste et a l’écoute qui aime le travail bien fait.")
user13 = User.create!(first_name: "Eva", last_name: "5hoursTicket", email: "eva@share.fr", batch: 1440, password: 123444, description:"Après avoir travaillé pendant 8ans dans le milieu de l'assurance, j'ai décidé de me reconvertir dans le milieu de la tech et du développement web. J'ai choisi le Wagon pour son format Bootcamp et pour acquérir de nouvelles compétences et connaissances techniques dans le développement web.")
user14 = User.create!(first_name: "Rika", last_name: "WhatTheHeck", email: "rikad@share.fr", batch: 1440, password: 123444, description:"I always been passionate by technologies. I started learning HTML and CSS on my own, then I researched on internet how to become an efficient developer web. I quite my current job, and did Le Wagon in Marseille. Today, I am improving my skills by coding everyday. I am looking to work as a freelancer. I can be mobile, in France (Marseille, Metz), London or Athens (Greece).")
user15 = User.create!(first_name: "Alex", last_name: "WeAllMissedYou", email: "alex@share.fr", batch: 1440, password: 123444, description:"'Codez toujours comme si la personne qui allait maintenir votre code était un violent psychopathe qui sait où vous habitez.'― Woods")
user16 = User.create!(first_name: "Benoit", last_name: "CssRubyJSC++", email: "benoit@share.fr", batch: 1440, password: 123444, description:"De formation ingé son puis 2004 chef de produit/manager pour des start-up dans le monde du mobile - 2012 arrivée sur Nantes, bébé puis projet de librairie BD - 2015 manager et consultant en financement de la R&D et de l'Innovation - 2021 Le wagon - 2022 Création de Vroad Studio et lancement d' www.app-ensemble.fr la plateforme de plan de travail pour les enseignants / TA Le Wagon J'adore la BD :)")
user17 = User.create!(first_name: "Natalia", last_name: "MissYou", email: "natalia@share.fr", batch: 1440, password: 123444, description:"Fullstack Web Dev (Batch 220, 2019), Freelance. Ubuntu Lover.")
user18 = User.create!(first_name: "Florine  ", last_name: "Shyny puppy", email: "florine@share.fr", batch: 1440, password: 123444, description:"Passionnée d'entreprenariat et de pédagogie, je suis convaincue que le futur est social et environnemental. Je travaille sur des projets d'éducation, comme Kidy qui propose des ateliers de sensibilisation à l'écologie pour les enfants.
N'hésitez pas à me contacter !")
user19 = User.create!(first_name: "Claire", last_name: "BatchManager.exist?", email: "claire@share.fr", batch: 1440, password: 123444, description: "Freelance Fullstack RoR Developer, React adopter, and former SaaS Deployment Project Manager in Healthcare & Biotech. Now teaching @Le Wagon Berlin! Always open for teaching around :globe: Pandemic hobbies: talking to my plants, trekking, biking around, knitting, yoga and RPG. Non-pandemic hobbies: talking to my plants, trekking, doing improv or going to concert and theater")
user20 = User.create!(first_name: "Florent", last_name: "Et...voilà", email: "florent@share.fr", batch: 1440, password: 123444, description:"À la base, formé en tant que technicien dans le bâtiment, j'ai abandonné ce milieu à mon arrivée sur Nantes, aux files des années j'ai fondé ma société de coursier à vélo. Aujourd'hui je viens au Wagon pour apprendre et enfin développer les outils nécessaires au bon fonctionnement de la société.")
user21 = User.create!(first_name: "Oliv", last_name: "GitPushOriginMain", email: "oliv@share.fr", batch: 1440, password: 123444, description:"I am a musician who first wanted to code to contribute to open-source projects. I want to learn web development with Le Wagon as a first step to learn application development later. My ultimate goal is to code for audio applications...")
user22 = User.create!(first_name: "Hugo", last_name: "LeSangdelaVeine", email: "hugo@share.fr", batch: 1440, password: 123444, description:"Hi my name is Hugo Vetrano, I'm 22! I currently live in Lille and I'm a business student at IÉSEG.")

puts "i*users ok"

user0.photo.attach(io: File.open('app/assets/images/aymard.jpg'),filename: 'aymard.jpg' )
user0.save
user1.photo.attach(io: File.open('app/assets/images/juju.png'),filename: 'juju.png' )
user1.save
user2.photo.attach(io: File.open('app/assets/images/sarah.jpg'),filename: 'sarah.jpg' )
user2.save
user3.photo.attach(io: File.open('app/assets/images/yacine.jpg'),filename: 'yacine.jpg' )
user3.save
user4.photo.attach(io: File.open('app/assets/images/valerian.jpg'),filename: 'valerian.jpg' )
user4.save
user5.photo.attach(io: File.open('app/assets/images/debo.jpg'),filename: 'debo.jpg' )
user5.save
user6.photo.attach(io: File.open('app/assets/images/lao.jpg'),filename: 'lao.jpg' )
user6.save
user7.photo.attach(io: File.open('app/assets/images/kevin.jpg'),filename: 'kevin.jpg' )
user7.save
user8.photo.attach(io: File.open('app/assets/images/clo.jpg'),filename: 'clo.jpg' )
user8.save
user9.photo.attach(io: File.open('app/assets/images/djadja.jpg'),filename: 'djadja.jpg' )
user9.save
user10.photo.attach(io: File.open('app/assets/images/fred.png'),filename: 'fred.png' )
user10.save
user11.photo.attach(io: File.open('app/assets/images/qian.jpg'),filename: 'qian.jpg' )
user11.save
user12.photo.attach(io: File.open('app/assets/images/maelie.jpg'),filename: 'maelie.jpg' )
user12.save
user13.photo.attach(io: File.open('app/assets/images/eva.jpg'),filename: 'eva.jpg' )
user13.save
user14.photo.attach(io: File.open('app/assets/images/rika.jpg'),filename: 'rika.jpg' )
user14.save
user15.photo.attach(io: File.open('app/assets/images/alex.jpg'),filename: 'alex.jpg' )
user15.save
user16.photo.attach(io: File.open('app/assets/images/benoit.jpg'),filename: 'benoit.jpg' )
user16.save
user17.photo.attach(io: File.open('app/assets/images/natalia.jpg'),filename: 'natalia.jpg' )
user17.save
user18.photo.attach(io: File.open('app/assets/images/florine.webp'),filename: 'florine.webp' )
user18.save
user19.photo.attach(io: File.open('app/assets/images/claire.jpg'),filename: 'claire.jpg' )
user19.save
user20.photo.attach(io: File.open('app/assets/images/florent.jpg'),filename: 'florent.jpg' )
user20.save
user21.photo.attach(io: File.open('app/assets/images/olivier.jpg'),filename: 'olivier.jpg' )
user21.save
user22.photo.attach(io: File.open('app/assets/images/hugo.jpg'),filename: 'hugo.jpg' )
user22.save

puts "users doc ok"
# SEED DES COURS

course1 = Course.create!(date:, user_id: user1.id, title: 'Introduction à JS', summarize: "Cours introduisant les bases de javascript. Lecture simple et rapide, privilégiez tout de même la pratique à la lecture. JavaScript est un langage de programmation côté client utilisé pour rendre les pages web interactives. Il permet de manipuler le contenu de la page, de répondre aux événements utilisateur et d'interagir avec les serveurs web.", category: "javascript")
course2 = Course.create!(date:, user_id: user1.id, title: "Introduction à l'HTML", summarize: "Brève introduction à l'HTML. HTML est le langage de balisage standard utilisé pour créer et structurer des pages web. Il utilise une syntaxe basée sur des balises pour définir la structure et le contenu d'une page web.", category: "html5")
course3 = Course.create!(date:, user_id: user1.id, title: 'Introduction à Ruby', summarize: "Ruby est un langage de programmation interprété, orienté objet et axé sur la simplicité et la productivité. Il est apprécié pour sa syntaxe élégante, sa flexibilité et sa facilité d'apprentissage. Ruby on Rails est un framework web populaire écrit en Ruby.", category: "ruby")
course4 = Course.create!(date:, user_id: user1.id, title: 'Intro CSS (Cascading Style Sheets)', summarize: "CSS est un langage de style utilisé pour définir la présentation et la mise en page des éléments HTML sur une page web. Il permet de contrôler l'apparence visuelle, les couleurs, les polices, les marges, etc.", category: "css3")
course5 = Course.create!(date:, user_id: user1.id, title: 'Cours plus avancé sur Ruby', summarize: "Ruby est un langage de programmation interprété, orienté objet et axé sur la simplicité et la productivité. Il est apprécié pour sa syntaxe élégante, sa flexibilité et sa facilité d'apprentissage. Ruby on Rails est un framework web populaire écrit en Ruby. Dans ce cours, vous apprendrez Ruby plus profondement afin de mieux comprendre le fonctionnement de son framework, Ruby On Rails.", category: "ruby")
course6 = Course.create!(date:, user_id: user1.id, title: 'Introduction à Rails', summarize: "Un framework est un ensemble structuré d'outils, de bibliothèques et de conventions de codage qui facilite le développement d'applications. Les frameworks aident les développeurs en fournissant une structure organisée, des fonctionnalités prêtes à l'emploi et des bonnes pratiques. Ruby on Rails, souvent abrégé en Rails, est un framework open source écrit en langage Ruby. Il a été créé par David Heinemeier Hansson et est sorti pour la première fois en 2004. Rails suit le paradigme de conception Model-View-Controller (MVC) et est conçu pour simplifier le processus de développement d'applications web en fournissant une structure organisée et des conventions de codage.", category: "ruby")
course7 = Course.create!(date:, user_id: user1.id, title: 'Introduction à ReactJS', summarize: "React.js est une bibliothèque JavaScript open source développée par Facebook. Elle est utilisée pour la construction d'interfaces utilisateur (UI) interactives et dynamiques. React permet de créer des composants réutilisables et facilite la gestion de l'état d'une application. Il utilise une approche déclarative pour décrire comment l'interface utilisateur doit se comporter en fonction de l'état de l'application, facilitant ainsi la création d'interfaces utilisateur complexes.", category: "javascript")
course8 = Course.create!(date:, user_id: user1.id, title: 'Introduction à StimulusJS', summarize: "Stimulus.js est une petite bibliothèque JavaScript développée par Basecamp. Elle est conçue pour ajouter de l'interactivité aux pages web sans la complexité d'un framework JavaScript complet. Stimulus se concentre sur l'amélioration des pages HTML existantes en ajoutant des comportements à l'aide de contrôleurs. Il suit le modèle MVVM (Model-View-ViewModel) et est souvent utilisé pour enrichir des pages générées côté serveur en ajoutant des interactions côté client de manière progressive", category: "javascript")
course9 = Course.create!(date:, user_id: user1.id, title: 'Introduction à Bootstrap', summarize: "Bootstrap est un framework front-end open source développé par Twitter. Il offre une collection d'outils, de styles et de composants prêts à l'emploi pour simplifier le processus de développement web. Bootstrap est basé sur HTML, CSS et JavaScript, et il permet aux développeurs de créer rapidement des interfaces utilisateur réactives et esthétiques. Il propose une grille flexible, des composants tels que des boutons et des formulaires stylisés, ainsi que des utilitaires CSS pour faciliter la mise en page et la personnalisation. Bootstrap favorise la conception responsive et la création de sites web mobiles conviviaux.", category: "css3")
course10 = Course.create!(date:, user_id: user1.id, title: 'Cours avancé sur HTML', summarize: "Après une bonne introduction à l'HTML, il est important d'aller plus loin dans l'apprentissage de celui-ci pour des pages web complètes et uniques. Have fun dans l'apprentissage de ce langage simple au demeurant !", category: "html5")
course11 = Course.create!(date:, user_id: user1.id, title: 'Cours avancé sur le CSS', summarize: "Il y a des centaines de millers de façon de personnalisé son site internet. Grace à ce cours, rendez votre site plus unique et à votre goût, c'est quand même plus intéressant ! ", category: "css3")
course12 = Course.create!(date:, user_id: user1.id, title: 'Introduction au MVC', summarize: "Le MVC (Modèle-Vue-Contrôleur) est un modèle de conception logicielle qui divise une application en trois composants principaux : le Model, le View, le Controller. Cette séparation des responsabilités facilite la maintenance, l'extensibilité et la réutilisation du code dans une application. Apprenez-en plus grace à ce cours, c'est une notion importante.", category: "ruby")
course13 = Course.create!(date:, user_id: user1.id, title: "Introduction à l'OOP", summarize: "L'OOP (Programmation Orientée Objet) est un paradigme de programmation qui organise le code autour d'objets. Un objet est une instance d'une classe, qui définit un modèle pour créer des objets avec des propriétés (attributs) et des comportements (méthodes). L'OOP favorise la réutilisabilité, la modularité et la structuration du code en regroupant des fonctionnalités connexes dans des entités autonomes. Les principaux concepts de l'OOP incluent l'encapsulation, l'héritage et le polymorphisme.", category: "ruby")
course14 = Course.create!(date:, user_id: user1.id, title: 'Intro à Tailwind CSS', summarize: "Tailwind CSS est un framework CSS utilitaire qui facilite la création de mises en page et de styles en utilisant des classes utilitaires directement dans le code HTML. Plutôt que de définir des styles dans des feuilles de style séparées, Tailwind propose une approche de classe utilitaire pour appliquer des styles directement aux éléments HTML. Il offre un ensemble complet de classes pour des propriétés telles que les marges, les couleurs, les polices, les tailles, etc. Tailwind favorise la rapidité de développement en éliminant la nécessité de créer des styles personnalisés, tout en offrant une flexibilité pour personnaliser et étendre les styles selon les besoins du projet.", category: "css3")
course15 = Course.create!(date:, user_id: user1.id, title: 'Cours avancé sur Rails', summarize: "Rails est un bon framework simple d'accès et d'apprentissage. Apprenez-en plus via ce cours, avec notamment les Callbacks, les Associations Avancées, le Devise, les API... Et plus encore ! Amusez-vous bien.", category: "ruby on rails")

puts "cours ok"

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

puts "cours doc ok"

# SEED DES EVENEMENTS
event1 = Event.create!(location: "Amphithéâtre Sarah",user_id: user1.id, created_by: "SYJA", starting_date: , title: "Comment réussir son pitch", category: "Conférence", description: "Pas envie de pitcher son projet de fin de batch comme tout le monde ? Envie d'exotisme et d'originalité ? Retrouvez toutes nos astuces pour vous faire ouvrir en deux par les profs juste après votre démonstration ! Et sans compter les remarques sur la CSS hein !")
event2 = Event.create!(location: "Bibliothèque",user_id: user1.id, created_by: "Juju", starting_date: , title: "Le db.drop : la bonne utilisation", category: "Coaching", description: "Tout bon dev senior commet des erreurs. Sauf moi. Pour vous, en cas de missplay, le db;drop est LA solution à tous vos problèmes. Suivez le guide.")
event3 = Event.create!(location: "Amphithéâtre Eva",user_id: user1.id, created_by: "Sarah", starting_date: , title: "Ah mais j'suis bête. Ah non en fait.", category: "Coaching", description: "Envie de faire croire aux autres que vous vous dévalorisez pour qu'ils vous fassent des compliments ? Faites semblant de faire des erreurs puis corrigez-les directement. N'oubliez pas le cri de joie qui accompagne chaque code réparé.")
event4 = Event.create!(location: "Salle Jade : BDE",user_id: user1.id, created_by: "Debo", starting_date: , title: "Ticket: plus qu'un outil, une passion", category: "Témoignage", description: "Votre batch manager ne sait pas que vous êtes rémunée au nombre de tickets ? Profitez-en. Ouvrez-en plusieurs en même temps comme des tables de Poker.")
event5 = Event.create!(location: "Campus",user_id: user1.id, created_by: "Maelie", starting_date: , title: "JULIEN, ARRETE DE DB.DROP !", category: "CAMPUS ALERT", description: "Je te jure, au prochain db.drop, je te vire du campus.")
event6 = Event.create!(location: "Amphithéâtre Alexis",user_id: user1.id, created_by: "Eva", starting_date: , title: "Ticket : les 5 astuces", category: "Conférence", description: "Comment optimiser vos tickets pour être payé le moins possible par votre employeur ? Retrouvez dans ce tutoriel tous mes trickshots pour finir la journée plus pauvre que je l'ai commencée.")
event7 = Event.create!(location: "Salle Emeraude : BDE",user_id: user1.id, created_by: "SYJA CORP", starting_date: , title: "Code war battle", category: "Tournoi", description: "Grand tournoi de codes en équipe. Le tournoi aura lieu à la bibli. Il se déroule en 3 manches : JS / CSS et RUBY. La team gagnante affronte les profs de ces discplines là.")
event8 = Event.create!(location: "Campus",user_id: user1.id, created_by: "Le Wagon", starting_date: , title: "Soirée de fin de batch", category: "Soirée", description: "Vous êtes en distanciel et terminez une formation ? Que cela ne vous empêche pas de vous coller une mine grâce à notre évènement exclusif : je me cyber déboite la tête ! Une simulation de cyber gueule de bois est offerte pour chaque entrée.")
event9 = Event.create!(location: "Campus",user_id: user1.id, created_by: "SYJA CORP", starting_date: , title: "Soirée de fin de batch 1438", category: "Soirée", description: "Une vraie soirée. Pas comme l'autre truc éclaté. Faut juste qu'on trouve la date et de la thune pour les billets de train de tout le monde ! En attendant, on se boit une mousse vant nos écrans, WOOHOO !")
event11 = Event.create!(location: "Campus",user_id: user1.id, created_by: "Sandrine", starting_date: , title: "DB DROP", category: "CAMPUS ALERT", description: "J'suis admin, tu va fer kwa ? Lololololol.")
event12 = Event.create!(location: "Campus",user_id: user1.id, created_by: "Rika", starting_date: , title: "Karaoké Dysney", category: "CAMPUS ALERT", description: "Venez donner de la voix en reprenant vos plus grands classiques et laissez vous emporter par les mélodies de notre jeunesse le temps d'une soirée. ")
event13 = Event.create!(location: "Salle Topaze : BDE",user_id: user1.id, created_by: "Lionel", starting_date: , title: "L'after work du jeudi soir arrive !", category: "Soirée", description: ".")
event14 = Event.create!(location: "Salle Améthyste : BDE",user_id: user1.id, created_by: "Hervé", starting_date: , title: "Love me as much you love coding", category: "Speed dating", description: "Venez trouver l'amour lors de cette traditionnelle soirée de rencontres entre étudiants. Le principe le même qu'IRL. Tenue correcte exigée.")
event15 = Event.create!(location: "Amphithéâtre Eva",user_id: user1.id, created_by: "Florine", starting_date: , title: "Code me if you dare", category: "Tournoi", description: "Qui viendra détroner la SYJA CORP et remportera le traditionnel tournoi de code organisé par le plus grand campus de codeurs d'Europe.")
event16 = Event.create!(location: "Campus",user_id: user1.id, created_by: "Sarah", starting_date: , title: "INVITEZ VOS AMIS SUR SHARE !", category: "CAMPUS ALERT", description: "Afin que la communauté s'enrichisse en contenu et en évènements, n'oubliez pas de parrainer vos connaissances.")
event17 = Event.create!(location: "Salle Rubis : BDE",user_id: user1.id, created_by: "Yacine", starting_date: , title: "Blind test du mercredi", category: "Gaming", description: "Le grand blind test animé par Cyntia revient à partir de mercredi. Venez défier vos amis en connaissances musicales. Solo ou en team, à vous de jouer.")
event18 = Event.create!(location: "Amphithéâtre Eva",user_id: user1.id, created_by: "Valerian", starting_date: , title: "Expat en remote, comment faire ?", category: "Témoignage", description: "Valérian vous partage son expérience d'expat en tant que développeur junior. Comment organiser ses RDV avec le décalage horaire, comment passer les entretiens d'embauche à distance et plein d'autres questions. Super expérience de témoignage d'un éleveur de moutons qui bosse aussi dans la tech")
event19 = Event.create!(location: "Salle Emeraude : BDE",user_id: user1.id, created_by: "Aymard", starting_date: , title: "On recherche des dev pour coder SHARE", category: "Speed dating", description: "Venez participer à l'expérience incroyable de coder une app dont l'avenir est assuré. Plus d'infos : contact@share.fr.")

puts "event ok"

amphi1 = Amphi.create!(name: "Jade")
amphi2 = Amphi.create!(name: "Sarah")
amphi3 = Amphi.create!(name: "Eva")
amphi4 = Amphi.create!(name: "Alexis")


puts "champion"
