class AddColsToMesoCycle < ActiveRecord::Migration
  def change
  	add_column :mesocycles, :macro_id, :integer
  	add_column :mesocycles, :title, :string
  end
end
