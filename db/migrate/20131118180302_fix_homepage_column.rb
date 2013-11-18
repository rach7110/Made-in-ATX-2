class FixHomepageColumn < ActiveRecord::Migration
	def change
		rename_column :companies, :honepage_url, :homepage_url
	end
end
