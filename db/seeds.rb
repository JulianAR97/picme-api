# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pic.create(url: "https://i.picsum.photos/id/48/800/450.jpg?hmac=4eTQ79NHBYIy0g4jcje6s0v6nvjn-lceD1qY-aS9eBg", id: 48, author: 'Luke Chesser');
Pic.create(url: "https://i.picsum.photos/id/11/800/450.jpg?hmac=yqmIRoEb__n63osRXrz0m7kKQ6F4SfM1iNs3ZF6uoVs", id: 11, author: 'Paul Jarvis');
Pic.create(url: "https://i.picsum.photos/id/177/800/450.jpg?hmac=ADfl70ErGIBvgKXsd9IAMUi14Dkl2LFY-_oUQOdyJfA", id: 177, author: 'Danka & Peter');
Pic.create(url: "https://i.picsum.photos/id/839/800/450.jpg?hmac=jEpxEgWhqdNkA7lDTRlNTGjXz4BQfr8nEqqgQTPc3Hg", id: 839, author: 'Abigail Keenan');


User.create(uuid: '3a6673-5b-e0cb-2858-e187bd3500')
User.create(uuid: 'abd2ed3-c286-a1a-b837-8ae32caa86dc')
User.create(uuid: '12656d-37e6-2ac6-b7e4-7b6356ca21d1')
User.create(uuid: '6b5ec3f-f8eb-4507-508-be821d2754')
