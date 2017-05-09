# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Deal.delete_all
Contract.delete_all
Driver.delete_all
Team.delete_all
Sponsor.delete_all

d1 = Driver.create({name: 'Lewis Hamilton', rank: 1 , age: 32})
d2 = Driver.create({name: 'Fernando Alonso', rank: 2 , age: 35})
d3 = Driver.create({name: 'Stoffel Vandoome', rank: 3 , age: 25})

t1 = Team.create({name: 'McLaren'})

s1 = Sponsor.create({name: 'Red Bull' , market: 'drinks', logo: 'URL_red_bull_placeholder'})
s2 = Sponsor.create({name: 'Santander' , market: 'banking', logo: 'URL_sanstander_placeholder'})
s3 = Sponsor.create({name: 'Johnnie Walker' , market: 'whiskey', logo: 'URL_Johnnie_Walker_placeholder'})

Contract.create({
    driver: d1,
    team: t1,
    value: 30000
  })

Contract.create({
    driver: d2,
    team: t1,
    value: 160859
  })


Contract.create({
    driver: d3,
    team: t1,
    value: 23343434
  })

Deal.create({
  driver: d1,
  team: t1,
  sponsor: s1,
  value: 5000000
  })

Deal.create({
  driver: d2,
  team: t1,
  sponsor: s2,
  value: 50003445
  })

Deal.create({
  driver: d3,
  team: t1,
  sponsor: s3,
  value: 6667453340
  })


