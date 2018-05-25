puts 'Cleaning database...'
Catch.destroy_all
Specie.destroy_all
Technic.destroy_all
User.destroy_all


puts 'Creating species...'

species_attributes = [
 {
   name: "Barbeau"
 },
 {
   name: "Brème"
 },
 {
   name: "Carpe"
 },
 {
   name: "Chevesne"
 },
 {
   name: "Gardon"
 },
 {
  name: "Rotengle"
 },
 {
   name: "Tanche"
 },
 {
   name: "Vandoise"
 },
 {
   name: "Blackbass"
 },
 {
   name: "Brochet"
 },
 {
   name: "Perche"
 },
 {
   name: "Sandre"
 },
 {
   name: "Silure"
 },
 {
   name: "Truite arc en ciel"
 },
 {
   name: "Truite fario"
 },
 {
   name: "Saumon de fontaine"
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
   name: "Cuillère"
 },
 {
   name: "Coup"
 },
 {
   name: "A l'anglaise"
 },
 {
   name: "Au flotteur"
 },
 {
   name: "Au feeder"
 },
 {
   name: "A rôder"
 }
]

Technic.create!(technics_attributes)
puts 'Finished!'


croustibat = User.create!(email: "croustibat@gmail.com", password: "jaimelesrivieres", first_name: "Crousti", last_name: "Tommy")
cousteau = User.create!(email: "cousteau@gmail.com", password: "cousteau", first_name: "Commandant", last_name: "Cousteau")
maxou = User.create!(email: "max@gmail.com", password: "maxpyp", first_name: "Maximilien", last_name: "Strauss")
osque = User.create!(email: "osque@gmail.com", password: "osquepyp", first_name: "Oscar", last_name: "Maybon")
tommy = User.create!(email: "tom@gmail.com", password: "tompyp", first_name: "Thomas", last_name: "Morin")
clarinette = User.create!(email: "clarinette@gmail.com", password: "clairepyp", first_name: "Claire", last_name: "Gautier")
Friendship.new(user: maxou, friend: osque).save
Friendship.new(user: maxou, friend: osque).save
Friendship.new(user: clarinette, friend: osque).save
Friendship.new(user: clarinette, friend: tommy).save
Friendship.new(user: tommy, friend: osque).save
Friendship.new(user: maxou, friend: croustibat).save
Friendship.new(user: osque, friend: croustibat).save
Friendship.new(user: clarinette, friend: croustibat).save
Friendship.new(user: tommy, friend: croustibat).save
Friendship.new(user: maxou, friend: cousteau).save
Friendship.new(user: clarinette, friend: cousteau).save




puts 'Creating catches...'
catches_attributes = [
  {
    user: osque,
    specie: Specie.order("random()").first,
    size: 66,
    weight: 6.7,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/qsf6T0G.png",
    description: "Carpe",
    technic: Technic.order("random()").first,
    latitude: 45.66097,
    longitude: 0.09973
  },
  {
    user: osque,
    specie: Specie.order("random()").first,
    size: 64,
    weight: 6.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/miFV9I3.png",
    description: "Carpe",
    technic: Technic.order("random()").first,
    latitude: 45.66071,
    longitude: 0.10011
  },
  {
    user: osque,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/k4v2GHd.png",
    description: "The French Trout",
    technic: Technic.order("random()").first,
    latitude: 45.89344,
    longitude: 0.24371
  },
  {
    user: tommy,
    specie: Specie.order("random()").first,
    size: 65,
    weight: 2.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/Di3eASM.png",
    description: "Broc",
    technic: Technic.order("random()").first,
    latitude: 45.66016,
    longitude: 0.10048
  },
  {
    user: tommy,
    specie: Specie.order("random()").first,
    size: 25,
    weight: 0.2,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/OCZiDLO.png",
    description: "Little BB",
    technic: Technic.order("random()").first,
    latitude: 45.66133,
    longitude: 0.09995
  },
  {
    user: tommy,
    specie: Specie.order("random()").first,
    size: 72,
    weight: 4.8,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/Cb6EORY.png",
    description: "The Fat French Trout",
    technic: Technic.order("random()").first,
    latitude: 45.66076,
    longitude: 0.10005
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 116,
    weight: 10.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/nQsYRdB.jpg",
    description: "Monster Pike",
    technic: Technic.order("random()").first,
    latitude: 45.6633,
    longitude: 0.24107
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 86,
    weight: 7.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/VXtbM5L.jpg",
    description: "Sandre du soir",
    technic: Technic.order("random()").first,
    latitude: 45.66487,
    longitude: 0.24087
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/41xHSxS.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first,
    latitude: 45.67578,
    longitude: 0.23625
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 43,
    weight: 1.7,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/EeypleC.jpg",
    description: "BigBlackBass",
    technic: Technic.order("random()").first,
    latitude: 45.67572,
    longitude: 0.23386
  },
  {
    user: cousteau,
    specie: Specie.order("random()").first,
    size: 49,
    weight: 1.7,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/CGF57cZ.png",
    description: "The Trout of The Touvre",
    technic: Technic.order("random()").first,
    latitude: 45.67599,
    longitude: 0.23298
  },
  {
    user: clarinette,
    specie: Specie.order("random()").first,
    size: 48,
    weight: 1.7,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/uj3sDEy.jpg",
    description: "Number 2",
    technic: Technic.order("random()").first,
    latitude: 45.67915,
    longitude: 0.20351
  },
  {
    user: clarinette,
    specie: Specie.order("random()").first,
    size: 23,
    weight: 0.2,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/1K8DocB.jpg",
    description: "Little Perch",
    technic: Technic.order("random()").first,
    latitude: 45.68702,
    longitude: 0.15531
  },
  {
    user: maxou,
    specie: Specie.order("random()").first,
    size: 45,
    weight: 1.5,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/lxR1VSW.jpg",
    description: "Masta",
    technic: Technic.order("random()").first,
    latitude: 45.68513,
    longitude: 0.1541
  },
  {
    user: maxou,
    specie: Specie.order("random()").first,
    size: 44,
    weight: 1.4,
    date:Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/n7m4KyT.jpg",
    description: "Masta ep.2",
    technic: Technic.order("random()").first,
    latitude: 45.69158,
    longitude: 0.15234
  },
  {
    user: maxou,
    specie: Specie.order("random()").first,
    size: 24,
    weight: 0.2,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/qJIOPyy.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first,
    latitude: 45.87617,
    longitude: 0.20698
  }
]

Catch.create!(catches_attributes)
puts 'Finished!'


