class CompaniesController < ApplicationController
  def index
  	@companies = Company.all
  end

  def new 
    @company = Company.new
  end

  def create
    @company = Company.new(params[:company])
    if @company.save
    	redirect_to home_path, notice: "Link added successfully"
 	  else
 	  	render action: 'new'
 	  end
  end

  def edit

  end

  def update

  end

  def destroy

  end


end
