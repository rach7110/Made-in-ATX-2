class FixColumnNames < ActiveRecord::Migration
  
  def change
		rename_column :companies, :category, :category_code
		rename_column :companies, :website, :honepage_url
		rename_column :companies, :description, :overview
		remove_column :companies, :address1
		remove_column :companies, :address2
	 	add_column :companies, :image, :string
  end

end
