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

croustibat = User.create!(email: "croustibat@gmail.com", password: "jaimelesrivieres")


puts 'Creating catches...'
catches_attributes = [
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "http://www.narinda-sport-fishing.com/images/stories/peche-au-gros/peche/peche-au-gros-sud-nosybe.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first,
    latitude: 45.66097,
    longitude: 0.09973
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "http://www.narinda-sport-fishing.com/images/stories/peche-au-gros/peche/peche-au-gros-sud-nosybe.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first,
    latitude: 45.66071,
    longitude: 0.10011
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "http://www.narinda-sport-fishing.com/images/stories/peche-au-gros/peche/peche-au-gros-sud-nosybe.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first,
    latitude: 45.89344,
    longitude: 0.24371
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "http://www.narinda-sport-fishing.com/images/stories/peche-au-gros/peche/peche-au-gros-sud-nosybe.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first,
    latitude: 45.66016,
    longitude: 0.10048
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "http://www.narinda-sport-fishing.com/images/stories/peche-au-gros/peche/peche-au-gros-sud-nosybe.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first,
    latitude: 45.66133,
    longitude: 0.09995
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "http://www.narinda-sport-fishing.com/images/stories/peche-au-gros/peche/peche-au-gros-sud-nosybe.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first,
    latitude: 45.66076,
    longitude: 0.10005
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "http://www.narinda-sport-fishing.com/images/stories/peche-au-gros/peche/peche-au-gros-sud-nosybe.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first,
    latitude: 45.6633,
    longitude: 0.24107
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "http://www.narinda-sport-fishing.com/images/stories/peche-au-gros/peche/peche-au-gros-sud-nosybe.jpg",
    description: "The French Trout",
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
    remote_photo_url: "http://www.narinda-sport-fishing.com/images/stories/peche-au-gros/peche/peche-au-gros-sud-nosybe.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first,
    latitude: 45.67578,
    longitude: 0.23625
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "http://www.narinda-sport-fishing.com/images/stories/peche-au-gros/peche/peche-au-gros-sud-nosybe.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first,
    latitude: 45.67572,
    longitude: 0.23386
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "http://www.narinda-sport-fishing.com/images/stories/peche-au-gros/peche/peche-au-gros-sud-nosybe.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first,
    latitude: 45.67599,
    longitude: 0.23298
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "http://www.narinda-sport-fishing.com/images/stories/peche-au-gros/peche/peche-au-gros-sud-nosybe.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first,
    latitude: 45.67915,
    longitude: 0.20351
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "http://www.narinda-sport-fishing.com/images/stories/peche-au-gros/peche/peche-au-gros-sud-nosybe.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first,
    latitude: 45.68702,
    longitude: 0.15531
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "http://www.narinda-sport-fishing.com/images/stories/peche-au-gros/peche/peche-au-gros-sud-nosybe.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first,
    latitude: 45.68513,
    longitude: 0.1541
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date:Date.new(2018,05,15),
    remote_photo_url: "http://www.narinda-sport-fishing.com/images/stories/peche-au-gros/peche/peche-au-gros-sud-nosybe.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first,
    latitude: 45.69158,
    longitude: 0.15234
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "http://www.narinda-sport-fishing.com/images/stories/peche-au-gros/peche/peche-au-gros-sud-nosybe.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first,
    latitude: 45.87617,
    longitude: 0.20698
  }
]

Catch.create!(catches_attributes)
puts 'Finished!'


