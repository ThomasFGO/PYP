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
clairette = User.create!(email: "clarita@hotmail.fr", password: "clairette", first_name: "Claire", last_name: "Gautier")
oscar = User.create!(email: "oscarito@gmail.com", password: "oscarito", first_name: "Oscar", last_name: "Maybon")
sybillette = User.create!(email: "sybille@gmail.com", password: "sybillepyp", first_name: "Sybille", last_name: "Pyp")
charlito = User.create!(email: "charlito@gmail.com", password: "charlito", first_name: "Charles", last_name: "Charlito")
romain = User.create!(email: "romain@gmail.com", password: "romain", first_name: "Romain", last_name: "Pyp")
nico = User.create!(email: "nico@gmail.com", password: "nicolas", first_name: "Nicolas", last_name: "Pyp")
Friendship.new(user: clarinette, friend: maxou).save
Friendship.new(user: clarinette, friend: osque).save
Friendship.new(user: clarinette, friend: tommy).save
Friendship.new(user: clarinette, friend: clairette).save
Friendship.new(user: clarinette, friend: oscar).save
Friendship.new(user: clarinette, friend: sybillette).save
Friendship.new(user: clarinette, friend: charlito).save
Friendship.new(user: clarinette, friend: romain).save
Friendship.new(user: clarinette, friend: nico).save
Friendship.new(user: maxou, friend: osque).save
Friendship.new(user: maxou, friend: osque).save
Friendship.new(user: clairette, friend: tommy).save
Friendship.new(user: clairette, friend: sybillette).save
Friendship.new(user: tommy, friend: osque).save
Friendship.new(user: charlito, friend: clairette).save
Friendship.new(user: tommy, friend: charlito).save
FriendRequest.new(user: oscar, friend: clairette).save
FriendRequest.new(user: clairette, friend: maxou).save
FriendRequest.new(user: sybillette, friend: maxou).save





puts 'Creating catches...'
catches_attributes = [
  {
    user: osque,
    specie: Specie.find_by(name: "Carp"),
    size: 66,
    weight: 6.7,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/qsf6T0G.png",
    description: "Fishing day is always a good day",
    technic: Technic.find_by(name: "Drop shot"),
    latitude: 45.66097,
    longitude: 0.09973
  },
  {
    user: romain,
    specie: Specie.find_by(name: "Carp"),
    size: 66,
    weight: 6.7,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/qsf6T0G.png",
    description: "Love fishing at sunrise: best views best catches",
    technic: Technic.find_by(name: "Drop shot"),
    latitude: 45.66097,
    longitude: 0.09973
  },
  {
    user: romain,
    specie: Specie.find_by(name: "Roach"),
    size: 112,
    weight: 9.7,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/OCZiDLO.png",
    description: "Bad day but good catch",
    technic: Technic.find_by(name: "Lure casting"),
    latitude: 45.66097,
    longitude: 0.09973
  },
  {
    user: nico,
    specie: Specie.find_by(name: "Brook trout"),
    size: 23,
    weight: 2.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/qsf6T0G.png",
    description: "Small brook trout, easy fight",
    technic: Technic.find_by(name: "Feeder fishing"),
    latitude: 45.66097,
    longitude: 0.09973
  },
  {
    user: nico,
    specie: Specie.find_by(name: "Blackbass"),
    size: 78,
    weight: 4.3,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/qsf6T0G.png",
    description: "Fishing day for my first day of holidays!!! So good to be back at it!",
    technic: Technic.find_by(name: "Hand fishing"),
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
    description: "First time I get a Carp so proud",
    technic: Technic.find_by(name: "Drop shot"),
    latitude: 45.66071,
    longitude: 0.10011
  },
  {
    user: osque,
    specie: Specie.find_by(name: "Roach"),
    size: 89,
    weight: 2.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/k4v2GHd.png",
    description: "Biggest fish I got so far!! The season is starting well :)",
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
    description: "Female bream, good catch but too much noise around, I had to wait a lot",
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
    description: "Only catch of the day, a bit disapointed.. Hope tomorrow is going to be a better day",
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
    user: sybillette,
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
    user: sybillette,
    specie: Specie.find_by(name: "Squalius"),
    size: 76,
    weight: 9.5,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/VXtbM5L.jpg",
    description: "The season is starting, finally!!!",
    technic: Technic.find_by(name: "Fly fishing"),
    latitude: 45.66487,
    longitude: 0.24087
  },
  {
    user: sybillette,
    specie: Specie.find_by(name: "Bream"),
    size: 86,
    weight: 7.1,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/VXtbM5L.jpg",
    description: "Sandre du soir",
    technic: Technic.find_by(name: "Lure casting"),
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
    description: "NIght fishing with my friends!",
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
    description: "I am glad I woke up at 6am to fish this beauty",
    technic: Technic.find_by(name: "Light jigging"),
    latitude: 45.69158,
    longitude: 0.15234
  },
  {
    user: charlito,
    specie: Specie.find_by(name: "Roach"),
    size: 24,
    weight: 0.2,
    date: Date.new(2018,05,15),
    remote_photo_url: "https://imgur.com/qJIOPyy.jpg",
    description: "Nice catch on a sunny afternoon with my friend",
    technic: Technic.find_by(name: "Lure casting"),
    latitude: 45.87617,
    longitude: 0.20698
  },
  {
    user: charlito,
    specie: Specie.find_by(name: "Silurus"),
    size: 29,
    weight: 3.12,
    date: Date.new(2018,05,30),
    remote_photo_url: "https://imgur.com/qJIOPyy.jpg",
    description: "Intense fight to get this Silurus, but it was worth it!",
    technic: Technic.find_by(name: "Surf fishing"),
    latitude: 45.87617,
    longitude: 0.20698
  }
]

Catch.create!(catches_attributes)
puts 'Finished!'


