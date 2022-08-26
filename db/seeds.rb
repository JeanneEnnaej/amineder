# categories : sport , romantique, party, netflix and chill, travail, deprime, culture
p "destroy tout"
Amine.destroy_all
Reservation.destroy_all
MoodCategory.destroy_all
Category.destroy_all
Mood.destroy_all

p 'créer categeories'
categories = %w[ sport romantique fete detente travail deprime culture ]

categories.each do |category|
  Category.create( name: category )
end



# sport_moods = %w[ dynamique joueur competitif ]
# romantique_moods = %w[ reveur drageur calin ]
# party_moods = %w[ dynamique festif joyeux]
# netflix_and_chill_moods = %w[ calme fatigué calin]
# travail_moods = %w[ ambitieux determiné concentré]
# deprime_moods = %w[ nostaligue triste empathique]
# culture_moods = %w[ cultivé curieux calme ]
p 'créer moods'
moods = %w[ dynamique joueur competitif reveur drageur calin festif joyeux calme fatigué ambitieux determiné concentré nostalgique triste empathique  cultivé curieux ]

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

fete = MoodCategory.new
fete.category = Category.find_by_name("fete")
fete.mood = Mood.find_by_name("dynamique")
fete.save

fete = MoodCategory.new
fete.category = Category.find_by_name("fete")
fete.mood = Mood.find_by_name("festif")
fete.save

fete = MoodCategory.new
fete.category = Category.find_by_name("fete")
fete.mood = Mood.find_by_name("joyeux")
fete.save

detente = MoodCategory.new
detente.category = Category.find_by_name("detente")
detente.mood = Mood.find_by_name("calme")
detente.save

detente = MoodCategory.new
detente.category = Category.find_by_name("detente")
detente.mood = Mood.find_by_name("fatigué")
detente.save

detente = MoodCategory.new
detente.category = Category.find_by_name("detente")
detente.mood = Mood.find_by_name("calin")
detente.save

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
