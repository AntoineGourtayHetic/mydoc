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

3.times do |a|

  puts "Creating Main chapter #{a}"
  main_chapter = Chapter.create({title: "Grand chapitre #{a}",published_at: Time.now })

  5.times do |i|
  
    #Afficher de l'information utile dans la console
    puts "  Creating Chapter #{i}"
    chapter = main_chapter.children.create({title: "Chapitre numéro #{i}",
                                            published_at: Time.now})
    10.times do |j|
      #Création d'un article
      chapter.articles.create({content: "Contenu de l'article #{j} pour le chapitre #{i}"})
      puts "    Creating article #{j} for chapter #{i}"
    end  
  end
end