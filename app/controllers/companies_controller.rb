class CompaniesController < ApplicationController
  # Try Groupon API, Seek Geek API (Taylor/Josh did one), Good Reads API (MKS Challenge) - look at MKS students code for Biblio

  require 'crunchbase' 

  def index
  	@companies = Company.all

    # Crunchbase API code - once it works, place it model for cleaner code

    Crunchbase::API.key = "bxqwjskgyrg2hjykcrc6dbpy"

    require 'open-uri'
    require 'json'

    # companies = Array.new

    # This made the hash of companies
    companies = Array.new
    number = 1
    @categories_array = []
    while number < 10 
      json_file= JSON.parse(open("http://api.crunchbase.com/v/1/search.js?geo=78701&range=15&page=#{number}&api_key=bxqwjskgyrg2hjykcrc6dbpy").read)
      results = json_file["results"]
      results.each do |result|
        company_hash = {"Name" => result["name"], "Category Code" => result["category_code"], "Description" => result["description"], "Address" => result["address1"], "Address #2" => result["address2"], "Website" => result["homepage_url"]}
        companies << company_hash

        Company.create name: result["name"], category: result["category_code"], description: result["description"], address1: result["address1"], address2: result["address2"], website: result["homepage_url"]

        # How many categories do we have?
        if !@categories_array.include?(result["category_code"])
          @categories_array << result["category_code"]
        end
      end
      number += 1
    end
  end

  def show
    @company = Company.find(params[:id])
  end

  def new 
    @company = Company.new
  end

  def create
    @company = Company.new(params[:company])
    if @company.save
    	redirect_to company_path(@company.id), notice: "Company added successfully"
 	  else
 	  	render action: 'new'
 	  end
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    
    if @company.update_attributes(params[:company])
      redirect_to company_path(@company.id), notice: "Company was updated succesfully"
    else
      render 'edit_company' 
    end 
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    
    redirect_to companies_path 
  end


end
