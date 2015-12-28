# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do |i|
	artist = Artist.create(name: "person - #{i}")
	5.times do |x|
		Album.create(title: "title - #{x}", artist_id: artist.id)
	end
end
