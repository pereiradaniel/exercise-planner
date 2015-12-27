class AddColsToDays < ActiveRecord::Migration
  def change
  	add_column :days, :title, :string
  	add_column :days, :microcycle_id, :integer
  end
end
