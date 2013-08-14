class Company < ActiveRecord::Base
  attr_accessible :name, :address1, :address2, :category, :description, :website
  
end
