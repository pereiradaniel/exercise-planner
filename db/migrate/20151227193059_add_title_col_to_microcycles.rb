class AddTitleColToMicrocycles < ActiveRecord::Migration
  def change
  	add_column :microcycles, :title, :string
  end
end
