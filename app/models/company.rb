
require 'open-uri'
require 'json'

class Company < ActiveRecord::Base
  attr_accessible :name, :category_code, :homepage_url, :overview, :image
  # validates_presence_of :name

		#-------Crunchbase::API.key = "bxqwjskgyrg2hjykcrc6dbpy"
	json_file = JSON.parse(open("http://api.crunchbase.com/v/1/search.js?geo=78701&range=15&page=1&api_key=bxqwjskgyrg2hjykcrc6dbpy").read)
	crunchbase_companies = json_file["results"] 
	    #-------Store API data into the DB:
	if @company.present? == false
		crunchbase_companies.each do |crunchbase_company|
  		@company = Company.create(:name => crunchbase_company["name"], :category_code => crunchbase_company["category_code"], :homepage_url => crunchbase_company["homepage_url"], :overview => crunchbase_company["overview"], :image => crunchbase_company["image"])
    end
  end
end

	
# Crunchbase API data format (the 'results' key is an array containing a hash for each company:
# Example:
# "name" => "Skylist"  (***)
# "category_code" => "web" (***)
# "description" => "Doing great things for the web!"
# "permalink" => "skylink"
# "crunchbase_url" => "http://www.crunchbase.com/company/skylist"
# "homepage_url"=>"http://www.skylist.com" (***)
# "namespace"=>"company"
# "overview"=>"Founded in 1996, SKYLIST is an email service provider. " (***)
# "image"=> {"available_sizes"=>[[[148, 35], "assets/images/resized/0002/3317/23317v1-max-150x150.png"], [[148, 35], "assets/images/resized/0002/3317/23317v1-max-250x250.png"], [[148, 35], "assets/images/resized/0002/3317/23317v1-max-450x450.png"]], "attribution"=>nil} (***)
#  "offices"=>[{"description"=>nil, "address1"=>"", "address2"=>"", "zip_code"=>"78701", "city"=>"Austin", "state_code"=>"TX", "country_code"=>"USA", "latitude"=>30.2672, "longitude"=>-97.742306}]} (***)