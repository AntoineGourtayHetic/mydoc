#db/seeds.rb
#php
#for ($i = 0; $i < 1000, $i++){
#  
#}

#Lancer la commande rake db:seed ou r.sh


#Noobs
#1000.times do |i|
#  Article.create({content: "Article numéro #{i}"})
#  puts "Creating article #{i}"
#end

#3.times do |a|
#
#  puts "Creating Main chapter #{a}"
#  main_chapter = Chapter.create({title: "Grand chapitre #{a}",published_at: Time.now })
#
#  5.times do |i|
#  
#    #Afficher de l'information utile dans la console
#    puts "  Creating Chapter #{i}"
#    chapter = main_chapter.children.create({title: "Chapitre numéro #{i}",
#                                            published_at: Time.now})
#    10.times do |j|
#      #Création d'un article
#      chapter.articles.create({content: "Contenu de l'article #{j} pour le chapitre #{i}"})
#      puts "    Creating article #{j} for chapter #{i}"
#    end  
#  end
#end


##presentation
#- historique
#- date e créatio
#- les créateurs
#- utilité
#Avantages et inconvénients
#- tabluea comparatif
#- exemples
presentation = Chapter.create({title: "Présentation", published_at: Time.zone.now})


introduction = Chapter.create({title: "Introduction", published_at: Time.zone.now})
rvm = introduction.children.create({title: "RVM", published_at: Time.zone.now})

rvm.articles.create({content: "Créer le fichier .ruby-version avec le contenu suivant: `ruby-2.3.1`. Ce fichier permet de décrire de quelle version nous avons besoin pour faire fonctionner le projet"})
rvm.articles.create({content: "Créer le fichier .ruby-gemset avec le contenu suivant: `mydoc`. Ce fichier permet de définir une sorte d'environnement virtuel pour chaque projet"})
rvm.articles.create({content: "Pour recharger l'environnement il faut faire un `cd .` ou relancer la console."})

introduction.children.create({title: "Initialisation des dépendances", published_at: Time.zone.now})
#article sur l'instlalatino de rails



























