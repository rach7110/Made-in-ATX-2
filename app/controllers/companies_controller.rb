class CompaniesController < ApplicationController
  # Try Groupon API, Seek Geek API (Taylor/Josh did one), Good Reads API (MKS Challenge) - look at MKS students code for Biblio
  
  def index
  	@companies = Company.all

    # Crunchbase API code - once it works, place it in model for cleaner code
    # require 'crunchbase' 
    require 'open-uri'
    require 'json'

    # Crunchbase::API.key = "bxqwjskgyrg2hjykcrc6dbpy"
    json_file = JSON.parse(open("http://api.crunchbase.com/v/1/search.js?geo=78701&range=15&page=1&api_key=bxqwjskgyrg2hjykcrc6dbpy").read)
    @crunchbase_companies = json_file["results"]

    #Iterate through object and instantiate class Company to store into the DB:
    @crunchbase_companies.each do |crunchbase_company|
      @company = Company.new(params[:company])
      @company.update_attributes(params[crunchbase_company])  
    end
  end

  def show
    @company = Company.find(params[:id])
    json_file = JSON.parse(open("http://api.crunchbase.com/v/1/company/#{@name}.js"))
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