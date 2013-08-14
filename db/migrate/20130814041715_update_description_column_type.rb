class UpdateDescriptionColumnType < ActiveRecord::Migration
	def change
		change_table :companies do |t|
			t.remove :description
			t.text :description
		end
	end
end
