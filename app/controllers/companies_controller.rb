class CompaniesController < ApplicationController
  # Try Groupon API, Seek Geek API (Taylor/Josh did one), Good Reads API (MKS Challenge) - look at MKS students code for Biblio


  def index
  	@companies = Company.all

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
