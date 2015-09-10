# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding Places"

file = "#{Rails.root}/db/cities15000.csv"

require 'csv'

CSV.foreach(file, headers: true) do |row|
  Place.create!(
      geo_id: row[0],
      name: row[2],
      lat: row[3],
      lng: row[4],
      continent: row[5],
      status: row[6]
  )
end