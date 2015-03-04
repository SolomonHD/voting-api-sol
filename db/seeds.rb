# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Candidate.create(name: "Helmut Kohl", party: "CDU")
Candidate.create(name: "Angela Merkel", party: "CDU")
Candidate.create(name: "Kay Hagen", party: "DEM")
Candidate.create(name: "Jesse Helms", party: "REP")
Candidate.create(name: "Shinzō Abe", party: "LDP")
Candidate.create(name: "Yoshihiko Noda", party: "NJP")
#Voter.create(name: "", party: "")
Voter.create(name: "Johan Stauss", party: "CDU")
Voter.create(name: "Mike Bachy", party: "REP")
Voter.create(name: "Donny Glass", party: "DEM")
Voter.create(name: "Gehard Schroder", party: "CDU")
