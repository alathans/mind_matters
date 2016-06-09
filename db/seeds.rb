# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'therapists.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Therapist.new
  t.first_name = row['first_name']
  t.last_name = row['last_name']
  t.username = row['username']
  t.password = row['password']
  t.email = row['email']
  t.address = row['address']
  t.photo = row['photo']
  t.national_provider_identifier = row['national_provider_identifier']
  t.education = row['education']
  t.bio = row['bio']
  t.save
end

  puts "There are now #{Therapist.count} rows in the Therapists table"
