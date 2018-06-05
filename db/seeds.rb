puts 'Cleaning database...'
Review.destroy_all
Friendship.destroy_all
FriendRequest.destroy_all
Catch.destroy_all
Specie.destroy_all
Technic.destroy_all
ChallengeUser.destroy_all
Challenge.destroy_all
User.destroy_all


puts 'Creating species...'

species_attributes = [
 {
  name: "Anguille"
 },
 {
   name: "Barbeau"
 },
 {
   name: "Blackbass"
 },
 {
   name: "Brochet"
 },
 {
   name: "Brême"
 },
 {
   name: "Carpe commune"
 },
 {
   name: "Carpe cuir"
 },
 {
   name: "Carpe miroir"
 },
 {
   name: "Chevesne"
 },
 {
   name: "Gardon"
 },
 {
   name: "Perche"
 },
 {
   name: "Sandre"
 },
 {
   name: "Saumon de fontaine"
 },
 {
   name: "Silure"
 },
 {
   name: "Tanche"
 },
 {
   name: "Truite arc-en-ciel"
 },
 {
   name: "Truite fario"
 },
 {
   name: "Vandoise"
 }
]
Specie.create!(species_attributes)
puts 'Finished!'

puts 'Creating technics...'

technics_attributes = [
 {
   name: "Appâts naturels"
 },
 {
   name: "Toc"
 },
 {
   name: "Mouche sèche"
 },
 {
   name: "Mouche noyée"
 },
 {
   name: "Streamer"
 },
 {
   name: "Leurre souple"
 },
 {
  name: "Poisson nageur"
 },
 {
   name: "Leurre de surface"
 },
 {
   name: "Mort manié"
 },
 {
   name: "Au posé"
 },
 {
   name: "Vif"
 },
 {
   name: "Cuiller"
 },
 {
   name: "Coup"
 },
 {
   name: "À l'anglaise"
 },
 {
   name: "Au flotteur"
 },
 {
   name: "Au feeder"
 },
 {
   name: "À rôder"
 }
]

Technic.create!(technics_attributes)
puts 'Finished!'

maxou = User.create!(email: "max@gmail.com", password: "maxpyp", first_name: "Maximilien", last_name: "Strauss")
tommy = User.create!(email: "tommy@gmail.com", password: "tommypyp", first_name: "Thomas", last_name: "Morin")
florian = User.create!(email: "florian@gmail.com", password: "florianpyp", first_name: "Florian", last_name: "Cauchois")
tom = User.create!(email: "tom@gmail.com", password: "tompyp", first_name: "Thomas", last_name: "Roy")
marc = User.create!(email: "marc@gmail.com", password: "marcpyp", first_name: "Marc", last_name: "Millieroux")


Friendship.new(user: maxou, friend: tommy).save
Friendship.new(user: maxou, friend: florian).save
Friendship.new(user: maxou, friend: tom).save
Friendship.new(user: maxou, friend: marc).save
Friendship.new(user: tommy, friend: florian).save
Friendship.new(user: tommy, friend: tom).save
Friendship.new(user: tommy, friend: marc).save
Friendship.new(user: florian, friend: tom).save
Friendship.new(user: florian, friend: marc).save
Friendship.new(user: tom, friend: marc).save





puts 'Creating catches...'
catches_attributes = [
  {
    user: maxou,
    specie: Specie.find_by(name: "Perche"),
    size: 45,
    weight: 1.5,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/lxR1VSW.jpg",
    description: "NIght fishing with my friends!",
    technic: Technic.find_by(name: "Leurre souple"),
    latitude: 46.63001,
    longitude: 0.36613
  },
  {
    user: maxou,
    specie: Specie.find_by(name: "Perche"),
    size: 44,
    weight: 1.4,
    date:Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/n7m4KyT.jpg",
    description: "I am glad I woke up at 6am to fish this beauty",
    technic: Technic.find_by(name: "Leurre souple"),
    latitude: 46.72532,
    longitude: 0.44212
  },
  {
    user: florian,
    specie: Specie.find_by(name: "Carpe commune"),
    size: 66,
    weight: 6.7,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/qsf6T0G.png",
    description: "Fishing day is always a good day",
    technic: Technic.find_by(name: "Au feeder"),
    latitude: 45.68324,
    longitude: 0.15268
  },
  {
    user: tommy,
    specie: Specie.find_by(name: "Blackbass"),
    size: 25,
    weight: 0.2,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/OCZiDLO.png",
    description: "Bad day but good catch",
    technic: Technic.find_by(name: "Leurre souple"),
    latitude: 45.68551,
    longitude: 0.15434
  },
  {
    user: florian,
    specie: Specie.find_by(name: "Carpe commune"),
    size: 64,
    weight: 6.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/miFV9I3.png",
    description: "First time I get a Carp so proud",
    technic: Technic.find_by(name: "Au flotteur"),
    latitude: 45.68381,
    longitude: 0.15304
  },
  {
    user: florian,
    specie: Specie.find_by(name: "Truite fario"),
    size: 89,
    weight: 2.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/k4v2GHd.png",
    description: "Biggest fish I got so far!! The season is starting well :)",
    technic: Technic.find_by(name: "Cuiller"),
    latitude: 45.66331,
    longitude: 0.24219
  },
  {
    user: tommy,
    specie: Specie.find_by(name: "Brochet"),
    size: 65,
    weight: 2.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/Di3eASM.png",
    description: "Nice pike, good catch but too much noise around, I had to wait a lot",
    technic: Technic.find_by(name: "Poisson nageur"),
    latitude: 45.89344,
    longitude: 0.24371
  },
  {
    user: tommy,
    specie: Specie.find_by(name: "Truite fario"),
    size: 72,
    weight: 4.8,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/Cb6EORY.png",
    description: "The Fat French Trout",
    technic: Technic.find_by(name: "Appâts naturels"),
    latitude: 45.66385,
    longitude: 0.24298
  },
  {
    user: marc,
    specie: Specie.find_by(name: "Brochet"),
    size: 116,
    weight: 10.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/nQsYRdB.jpg",
    description: "Monster Pike",
    technic: Technic.find_by(name: "Streamer"),
    latitude: 45.62844,
    longitude: -0.01783
  },
  {
    user: marc,
    specie: Specie.find_by(name: "Sandre"),
    size: 76,
    weight: 9.5,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/VXtbM5L.jpg",
    description: "Sandre du soir, bonsoir",
    technic: Technic.find_by(name: "Streamer"),
    latitude: 45.79631,
    longitude: 0.06745
  },
  {
    user: marc,
    specie: Specie.find_by(name: "Truite fario"),
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/41xHSxS.jpg",
    description: "The French Trout",
    technic: Technic.find_by(name: "Mouche noyée"),
    latitude: 45.68117,
    longitude: 0.20924
  },
  {
    user: marc,
    specie: Specie.find_by(name: "Blackbass"),
    size: 43,
    weight: 1.7,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/EeypleC.jpg",
    description: "BigBlackBass",
    technic: Technic.find_by(name: "Streamer"),
    latitude: 43.77022,
    longitude: -0.97907
  },
  {
    user: tom,
    specie: Specie.find_by(name: "Truite fario"),
    size: 49,
    weight: 1.7,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/CGF57cZ.png",
    description: "The Trout of The Touvre",
    technic: Technic.find_by(name: "Leurre de surface"),
    latitude: 45.66305,
    longitude: 0.24251
  },
  {
    user: tom,
    specie: Specie.find_by(name: "Truite fario"),
    size: 48,
    weight: 1.7,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/uj3sDEy.jpg",
    description: "Number 2",
    technic: Technic.find_by(name: "Poisson nageur"),
    latitude: 45.66315,
    longitude: 0.24256
  },
  {
    user: tom,
    specie: Specie.find_by(name: "Perche"),
    size: 23,
    weight: 0.2,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/1K8DocB.jpg",
    description: "Little Perch",
    technic: Technic.find_by(name: "Poisson nageur"),
    latitude: 45.65408,
    longitude: 0.15721
  },
  {
    user: tom,
    specie: Specie.find_by(name: "Perche"),
    size: 24,
    weight: 0.2,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/qJIOPyy.jpg",
    description: "Nice catch on a sunny afternoon with my friend",
    technic: Technic.find_by(name: "Leurre de surface"),
    latitude: 45.66332,
    longitude: 0.12312
  }
]

Catch.create!(catches_attributes)
puts 'Finished!'


