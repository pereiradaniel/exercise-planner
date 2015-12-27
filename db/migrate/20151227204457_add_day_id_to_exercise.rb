class AddDayIdToExercise < ActiveRecord::Migration
  def change
  	add_column :exercises, :day_id, :integer
  end
end
