class RenameMicocyclesToMicroCycles < ActiveRecord::Migration
  def change
  	rename_table :micocycles, :microcycles
  end
end
