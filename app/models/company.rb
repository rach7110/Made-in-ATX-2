class Company < ActiveRecord::Base
  attr_accessible :name, :address1, :address2, :category, :description, :website
  # validates_presence_of :name
end



# Updated model using Crunchbase API naming convention for attributes:
# class Company < ActiveRecord::Base
# 	attr_accessible :name, :category_code, :homepage_url, :overview, :image
# 	validates_presence_of :name
# end


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