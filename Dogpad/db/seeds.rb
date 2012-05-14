# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

contactCats = ContactCat.create([{name: 'Breeder'}, {name: 'Insurance'}, {name: 'Vet'}])
nuters = Nutered.create([{name: 'Yes'}, {name: 'No'}])
genders = Gender.create([{name: 'Male'}, {name: 'Female'}])