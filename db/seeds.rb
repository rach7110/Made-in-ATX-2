# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

companies = Company.create([{name: 'Design for Use', address1: '2235 East 6th Street', address2: 'Unit 105', category: 'UX Design', description: 'At Design For Use, we balance form and function to help you create the best user experience possible', website: 'http://designforuse.net'}, {name: 'Adventure Kick', address1: 'Austin', category: 'Adventure Travel', description: 'Adventure Kick helps you find obscure destinations', website: 'http://adventurekick.com'}, {name: 'Pushstart', address1: '4600 Mueller Blvd.', address2: '', category: 'Product Design, UX Design', description: 'We help clients design physical and digital products with exceptional user experiences', website: 'http://pushstartcreative.com/'}, {name: 'GSD&M', address1: '828 West 6th Street', address2: 'Austin, Texas 78703', category: 'advertising agency', description: 'We are a full-service advertising agency born and raised in Austin, Texas. ', website: 'http://pushstartcreative.com/'}, {name: 'Design for Use', address1: '2235 East 6th Street', address2: 'Unit 105', category: 'UX Design', description: 'At Design For Use, we balance form and function to help you create the best user experience possible', website: 'http://designforuse.net'}, {name: 'Adventure Kick', address1: 'Austin', category: 'Adventure Travel', description: 'Adventure Kick helps you find obscure destinations', website: 'http://adventurekick.com'}, {name: 'Pushstart', address1: '4600 Mueller Blvd.', address2: '', category: 'Product Design, UX Design', description: 'We help clients design physical and digital products with exceptional user experiences', website: 'http://pushstartcreative.com/'}, {name: 'GSD&M', address1: '828 West 6th Street', address2: 'Austin, Texas 78703', category: 'advertising agency', description: 'We are a full-service advertising agency born and raised in Austin, Texas. ', website: 'http://pushstartcreative.com/'}, {name: 'Design for Use', address1: '2235 East 6th Street', address2: 'Unit 105', category: 'UX Design', description: 'At Design For Use, we balance form and function to help you create the best user experience possible', website: 'http://designforuse.net'}, {name: 'Adventure Kick', address1: 'Austin', category: 'Adventure Travel', description: 'Adventure Kick helps you find obscure destinations', website: 'http://adventurekick.com'}, {name: 'Pushstart', address1: '4600 Mueller Blvd.', address2: '', category: 'Product Design, UX Design', description: 'We help clients design physical and digital products with exceptional user experiences', website: 'http://pushstartcreative.com/'}, {name: 'GSD&M', address1: '828 West 6th Street', address2: 'Austin, Texas 78703', category: 'advertising agency', description: 'We are a full-service advertising agency born and raised in Austin, Texas. ', website: 'http://pushstartcreative.com/'}])


# class Company < ActiveRecord::Base
#   attr_accessible :name, :address1, :address2, :category, :description, :website
  
# end

# require 'crunchbase'
# require 'open-uri'
# require 'json'

# Crunchbase::API.key = "bxqwjskgyrg2hjykcrc6dbpy"

# companies = Array.new

# # This made the hash of companies
# companies = Array.new
# number = 1
# categories_array = []
# while number < 10 
#   json_file= JSON.parse(open("http://api.crunchbase.com/v/1/search.js?geo=78701&range=15&page=#{number}&api_key=bxqwjskgyrg2hjykcrc6dbpy").read)
#   results = json_file["results"]
#   results.each do |result|
#     company_hash = {"Name" => result["name"], "Category Code" => result["category_code"], "Description" => result["description"], "Address" => result["address1"], "Address #2" => result["address2"], "Website" => result["homepage_url"]}
#     companies << company_hash
#     puts "Company: #{result["name"]}"

#    Company.create name: result["name"], category: result["category_code"], description: result["description"], address1: result["address1"], address2: result["address2"], website: result["homepage_url"]

#     # How many categories do we have?
#     if !categories_array.include?(result["category_code"])
#       categories_array << result["category_code"]
#     end
#   end
#   number += 1
# end
# puts "Here are all the categories: #{categories_array}, there are #{categories_array.length} of them."

# puts "I found #{companies.length} many companies in Austin, TX." 

