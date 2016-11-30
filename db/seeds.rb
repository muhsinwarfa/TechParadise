# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
r = Role.create(skill_name: "Web developer")
Role.create(skill_name: "Job Seeker")
Platform.create([{platform_name: "IOs"}, {platform_name: "iPhone App"}, {platform_name: "Web App"}])
User.create(email: "tartan@cmu.edu", password: "foobar", admin: true, role_id: r.id) 
 