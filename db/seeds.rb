# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

companies = Company.create([{name: 'Design for Use', address1: '2235 East 6th Street', address2: 'Unit 105', category: 'UX Design', description: 'At Design For Use, we balance form and function to help you create the best user experience possible', website: 'http://designforuse.net'}, {name: 'Adventure Kick', address1: 'Austin', category: 'Adventure Travel', description: 'Adventure Kick helps you find obscure destinations', website: 'http://adventurekick.com'}])

# class Company < ActiveRecord::Base
#   attr_accessible :name, :address1, :address2, :category, :description, :website
  
# end
