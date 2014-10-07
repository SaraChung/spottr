# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

exercises = [{ name: "Weights"}, { name: "Crossfit"}, { name: "Yoga"}, { name: "Body Pump"}, { name: "Others"}]
exercises.each do |x|
  Exercise.where(x, without_protection: true).first_or_create!
end