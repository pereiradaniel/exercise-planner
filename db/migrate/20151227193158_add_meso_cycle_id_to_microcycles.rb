class AddMesoCycleIdToMicrocycles < ActiveRecord::Migration
  def change
  	add_column :microcycles, :mesocycle_id, :integer
  end
end
