class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :category
      t.string :description
      t.string :website

      t.timestamps
    end
  end
end
