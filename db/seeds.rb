# categories : sport , romantique, party, netflix and chill, travail, deprime, culture
p "destroy tout"
MoodCategory.destroy_all
Category.destroy_all
Mood.destroy_all

p 'créer categeories'
categories = %w[ sport romantique party netflix_and_chill travail deprime culture ]

categories.each do |category|
  Category.create( name: category )
end


# sport = Category.create {
#   name: sport
# }
# sport_moods.each do |mood|
#   Mood.create {
#     name: mood,

#   }
# end

# sport_moods = %w[ dynamique joueur competitif ]
# romantique_moods = %w[ reveur drageur calin ]
# party_moods = %w[ dynamique festif joyeux]
# netflix_and_chill_moods = %w[ calme fatigué calin]
# travail_moods = %w[ ambitieux determiné concentré]
# deprime_moods = %w[ nostaligue triste empathique]
# culture_moods = %w[ cultivé curieux calme ]
p 'créer moods'
moods = %w[ dynamique joueur competitif reveur drageur calin festif joyeux calme fatigué ambitieux determiné concentré nostaligue triste empathique  cultivé curieux ]

moods.each do |mood|
  Mood.create(
    name: mood
  )
end

sport = MoodCategory.new
sport.category = Category.find_by_name("sport")
sport.mood = Mood.find_by_name("dynamique")
sport.save

sport = MoodCategory.new
sport.category = Category.find_by_name("sport")
sport.mood = Mood.find_by_name("joueur")
sport.save

sport = MoodCategory.new
sport.category = Category.find_by_name("sport")
sport.mood = Mood.find_by_name("competitif")
sport.save

romantique = MoodCategory.new
romantique.category = Category.find_by_name("romantique")
romantique.mood = Mood.find_by_name("reveur")
romantique.save

romantique = MoodCategory.new
romantique.category = Category.find_by_name("romantique")
romantique.mood = Mood.find_by_name("drageur")
romantique.save

romantique = MoodCategory.new
romantique.category = Category.find_by_name("romantique")
romantique.mood = Mood.find_by_name("calin")
romantique.save

party = MoodCategory.new
party.category = Category.find_by_name("party")
party.mood = Mood.find_by_name("dynamique")
party.save

party = MoodCategory.new
party.category = Category.find_by_name("party")
party.mood = Mood.find_by_name("festif")
party.save

party = MoodCategory.new
party.category = Category.find_by_name("party")
party.mood = Mood.find_by_name("joyeux")
party.save

netflix_and_chill = MoodCategory.new
netflix_and_chill.category = Category.find_by_name("netflix_and_chill")
netflix_and_chill.mood = Mood.find_by_name("calme")
netflix_and_chill.save

netflix_and_chill = MoodCategory.new
netflix_and_chill.category = Category.find_by_name("netflix_and_chill")
netflix_and_chill.mood = Mood.find_by_name("fatigué")
netflix_and_chill.save

netflix_and_chill = MoodCategory.new
netflix_and_chill.category = Category.find_by_name("netflix_and_chill")
netflix_and_chill.mood = Mood.find_by_name("calin")
netflix_and_chill.save

travail = MoodCategory.new
travail.category = Category.find_by_name("travail")
travail.mood = Mood.find_by_name("ambitieux")
travail.save

travail = MoodCategory.new
travail.category = Category.find_by_name("travail")
travail.mood = Mood.find_by_name("determiné")
travail.save

travail = MoodCategory.new
travail.category = Category.find_by_name("travail")
travail.mood = Mood.find_by_name("concentré")
travail.save

deprime = MoodCategory.new
deprime.category = Category.find_by_name("deprime")
deprime.mood = Mood.find_by_name("nostalgique")
deprime.save

deprime = MoodCategory.new
deprime.category = Category.find_by_name("deprime")
deprime.mood = Mood.find_by_name("triste")
deprime.save

deprime = MoodCategory.new
deprime.category = Category.find_by_name("deprime")
deprime.mood = Mood.find_by_name("empathique")
deprime.save

culture = MoodCategory.new
culture.category = Category.find_by_name("culture")
culture.mood = Mood.find_by_name("cultivé")
culture.save

culture = MoodCategory.new
culture.category = Category.find_by_name("culture")
culture.mood = Mood.find_by_name("curieux")
culture.save

culture = MoodCategory.new
culture.category = Category.find_by_name("culture")
culture.mood = Mood.find_by_name("calme")
culture.save

p "finito"
