puts 'Cleaning database...'
Review.destroy_all
Friendship.destroy_all
FriendRequest.destroy_all
Catch.destroy_all
puts "catch ok"
Specie.destroy_all
Technic.destroy_all
ChallengeUser.destroy_all
Challenge.destroy_all
User.destroy_all


puts 'Creating species...'

species_attributes = [
 {
   name: "Barbel"
 },
 {
   name: "Bream"
 },
 {
   name: "Carp"
 },
 {
   name: "Squalius"
 },
 {
   name: "Roach"
 },
 {
  name: "Rudd"
 },
 {
   name: "Tench"
 },
 {
   name: "Dace"
 },
 {
   name: "Blackbass"
 },
 {
   name: "Pike"
 },
 {
   name: "Perch"
 },
 {
   name: "Zander"
 },
 {
   name: "Silurus"
 },
 {
   name: "Rainbow trout"
 },
 {
   name: "Salmon trout"
 },
 {
   name: "Brook trout"
 }
]
Specie.create!(species_attributes)
puts 'Finished!'

puts 'Creating technics...'

technics_attributes = [
 {
   name: "Drop shot"
 },
 {
   name: "Lure casting"
 },
 {
   name: "Carp fishing"
 },
 {
   name: "Fly fishing"
 },
 {
   name: "Rock fishing"
 },
 {
  name: "Surf fishing"
 },
 {
   name: "Trap fishing"
 },
 {
   name: "Eging"
 },
 {
   name: "Drift fishing"
 },
 {
   name: "Gillnet fishing"
 },
 {
   name: "Feeder fishing"
 },
 {
   name: "Hand fishing"
 },
 {
   name: "Ice fishing"
 },
 {
   name: "Inchiku"
 },
 {
   name: "Light jigging"
 },
 {
   name: "Live bait"
 },
 {
   name: "Pole fishing"
 }
]

Technic.create!(technics_attributes)
puts 'Finished!'

maxou = User.create!(email: "max@gmail.com", password: "maxpyp", first_name: "Maximilien", last_name: "Strauss")
osque = User.create!(email: "osque@gmail.com", password: "osquepyp", first_name: "Oscar", last_name: "Pyp")
tommy = User.create!(email: "tom@gmail.com", password: "tompyp", first_name: "Thomas", last_name: "Pyp")
clarinette = User.create!(email: "clarinette@gmail.com", password: "clairepyp", first_name: "Claire", last_name: "Pyp")
clairette = User.create!(email: "claire5613@hotmail.fr", password: "clairette", first_name: "Claire", last_name: "Gautier")
oscar = User.create!(email: "oscar.maybon@gmail.com", password: "oscarito", first_name: "Oscar", last_name: "Maybon")
Friendship.new(user: maxou, friend: osque).save
Friendship.new(user: maxou, friend: osque).save
Friendship.new(user: clairette, friend: tommy).save
Friendship.new(user: clarinette, friend: clairette).save
Friendship.new(user: tommy, friend: osque).save
FriendRequest.new(user: oscar, friend: clairette)
FriendRequest.new(user: clairette, friend: maxou)




puts 'Creating catches...'
catches_attributes = [
  {
    user: osque,
    specie: Specie.find_by(name: "Carp"),
    size: 66,
    weight: 6.7,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/qsf6T0G.png",
    description: "Carp",
    technic: Technic.find_by(name: "Drop shot"),
    latitude: 45.66097,
    longitude: 0.09973
  },
  {
    user: osque,
    specie: Specie.find_by(name: "Carp"),
    size: 64,
    weight: 6.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/miFV9I3.png",
    description: "Carp",
    technic: Technic.find_by(name: "Drop shot"),
    latitude: 45.66071,
    longitude: 0.10011
  },
  {
    user: osque,
    specie: Specie.find_by(name: "Roach"),
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/k4v2GHd.png",
    description: "The French Trout",
    technic: Technic.find_by(name: "Lure casting"),
    latitude: 45.89344,
    longitude: 0.24371
  },
  {
    user: tommy,
    specie: Specie.find_by(name: "Bream"),
    size: 65,
    weight: 2.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/Di3eASM.png",
    description: "Broc",
    technic: Technic.find_by(name: "Light jigging"),
    latitude: 45.66016,
    longitude: 0.10048
  },
  {
    user: tommy,
    specie: Specie.find_by(name: "Blackbass"),
    size: 25,
    weight: 0.2,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/OCZiDLO.png",
    description: "Little BB",
    technic: Technic.find_by(name: "Light jigging"),
    latitude: 45.66133,
    longitude: 0.09995
  },
  {
    user: tommy,
    specie: Specie.find_by(name: "Roach"),
    size: 72,
    weight: 4.8,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/Cb6EORY.png",
    description: "The Fat French Trout",
    technic: Technic.find_by(name: "Feeder fishing"),
    latitude: 45.66076,
    longitude: 0.10005
  },
  {
    user: clairette,
    specie: Specie.find_by(name: "Bream"),
    size: 116,
    weight: 10.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/nQsYRdB.jpg",
    description: "Monster Pike",
    technic: Technic.find_by(name: "Fly fishing"),
    latitude: 45.6633,
    longitude: 0.24107
  },
  {
    user: clairette,
    specie: Specie.find_by(name: "Bream"),
    size: 86,
    weight: 7.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/VXtbM5L.jpg",
    description: "Sandre du soir",
    technic: Technic.find_by(name: "Fly fishing"),
    latitude: 45.66487,
    longitude: 0.24087
  },
  {
    user: clairette,
    specie: Specie.find_by(name: "Roach"),
    size: 56,
    weight: 2.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/41xHSxS.jpg",
    description: "The French Trout",
    technic: Technic.find_by(name: "Hand fishing"),
    latitude: 45.67578,
    longitude: 0.23625
  },
  {
    user: clairette,
    specie: Specie.find_by(name: "Blackbass"),
    size: 43,
    weight: 1.7,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/EeypleC.jpg",
    description: "BigBlackBass",
    technic: Technic.find_by(name: "Fly fishing"),
    latitude: 45.67572,
    longitude: 0.23386
  },
  {
    user: clairette,
    specie: Specie.find_by(name: "Roach"),
    size: 49,
    weight: 1.7,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/CGF57cZ.png",
    description: "The Trout of The Touvre",
    technic: Technic.find_by(name: "Hand fishing"),
    latitude: 45.67599,
    longitude: 0.23298
  },
  {
    user: clarinette,
    specie: Specie.find_by(name: "Roach"),
    size: 48,
    weight: 1.7,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/uj3sDEy.jpg",
    description: "Number 2",
    technic: Technic.find_by(name: "Hand fishing"),
    latitude: 45.67915,
    longitude: 0.20351
  },
  {
    user: clarinette,
    specie: Specie.find_by(name: "Perch"),
    size: 23,
    weight: 0.2,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/1K8DocB.jpg",
    description: "Little Perch",
    technic: Technic.find_by(name: "Hand fishing"),
    latitude: 45.68702,
    longitude: 0.15531
  },
  {
    user: maxou,
    specie: Specie.find_by(name: "Perch"),
    size: 45,
    weight: 1.5,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/lxR1VSW.jpg",
    description: "Masta",
    technic: Technic.find_by(name: "Feeder fishing"),
    latitude: 45.68513,
    longitude: 0.1541
  },
  {
    user: maxou,
    specie: Specie.find_by(name: "Perch"),
    size: 44,
    weight: 1.4,
    date:Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/n7m4KyT.jpg",
    description: "Masta ep.2",
    technic: Technic.find_by(name: "Light jigging"),
    latitude: 45.69158,
    longitude: 0.15234
  },
  {
    user: maxou,
    specie: Specie.find_by(name: "Roach"),
    size: 24,
    weight: 0.2,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/qJIOPyy.jpg",
    description: "The French Trout",
    technic: Technic.find_by(name: "Lure casting"),
    latitude: 45.87617,
    longitude: 0.20698
  }
]

Catch.create!(catches_attributes)
puts 'Finished!'


