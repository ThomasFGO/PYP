puts 'Cleaning database...'
Specie.destroy_all
Technic.destroy_all
Catch.destroy_all
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
    photo: "https://www.aquaportail.com/pictures1112/anemone-clown_1322913402-poisson-rouge-rouge.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    photo: "../app/assets/images/barbeau_poisson.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    photo: "../app/assets/images/blackbass_poisson.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    photo: "../app/assets/images/breme_poisson.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    photo: "../app/assets/images/brochet_poisson.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    photo: "../app/assets/images/carpe_commune_poisson.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    photo: "../app/assets/imagesch/chevesne_poisson.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    photo: "../app/assets/images/gardon_poisson.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    photo: "../app/assets/images/saumon_de_fontaine.jpeg",
    description: "The French Trout",
    technic: Technic.order("random()").first
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    photo: "../app/assets/images/perche_commune_poisson.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    photo: "../app/assets/images/rotengle_poisson.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    photo: "../app/assets/images/sandre_poisson.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    photo: "../app/assets/images/silure_poisson.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    photo: "../app/assets/images/tanche_poisson.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date:Date.new(2018,05,15),
    photo: "../app/assets/images/truite_fario_poisson.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first
  },
  {
    user: croustibat,
    specie: Specie.order("random()").first,
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    photo: "../app/assets/images/vandoise_poisson.jpg",
    description: "The French Trout",
    technic: Technic.order("random()").first
  }
]

Catch.create!(catches_attributes)
puts 'Finished!'


