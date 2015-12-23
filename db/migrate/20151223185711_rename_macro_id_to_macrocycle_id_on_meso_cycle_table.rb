class RenameMacroIdToMacrocycleIdOnMesoCycleTable < ActiveRecord::Migration
  def change
  	rename_column :mesocycles, :macro_id, :macrocycle_id
  end
end
