class AddColsToMacroCycle < ActiveRecord::Migration
  def change
  	add_column :macrocycles, :plan_id, :integer
  	add_column :macrocycles, :title, :string
  	add_column :macrocycles, :start_date, :datetime
  	add_column :macrocycles, :end_date, :datetime
  end
end
