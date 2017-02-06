# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!([
  {pseudo: "Dodo", password: "dodorider", picture: "http://1.bp.blogspot.com/-EbalO4vytNo/T0E_eJnWfsI/AAAAAAAABB0/ukRH3LUD2kY/s1600/dodo+after+michael+kutsche+19+feb+2012.JPG", role: "Admin"}
])
