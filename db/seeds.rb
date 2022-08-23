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


p "user"

User.create!(first_name: "Toto", last_name: "Titi", email: "toto@toto.com", password: "totototo")
User.create!(first_name: "Tata", last_name: "Tutu", email: "tata@tata.com", password: "tatatata")

p "amine"

amine1 = Amine.new(name: "Aminetest", price: 60, description: "Testtetststetstettststetstst")
amine1.mood = Mood.find_by_name("calme")
amine1.owner = User.find_by_last_name("Titi")
amine1.save!

amine2 = Amine.new(name: "Aminebis", price: 80, description: "Testtetststetstettststetststiiiii")
amine2.mood = Mood.find_by_name("curieux")
amine2.owner = User.find_by_last_name("Titi")
amine2.save!

amine3 = Amine.new(name: "Amineter", price: 70, description: "Testtetststetstettststetststiiiii")
amine3.mood = Mood.find_by_name("festif")
amine3.owner = User.find_by_last_name("Titi")
amine3.save!

amine4 = Amine.new(name: "Aminequadro", price: 70, description: "Testtetststetstettststetststiiiii")
amine4.mood = Mood.find_by_name("dynamique")
amine4.owner = User.find_by_last_name("Titi")
amine4.save!

p "reservation"

Reservation.create!(date: "2022/08/24", status: "pending", user_id: 1, amine_id: 1, message: "fdjfkdljfdsbfhjdklj")

p "finito"
