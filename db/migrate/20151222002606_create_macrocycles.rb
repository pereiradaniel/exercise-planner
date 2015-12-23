class CreateMacrocycles < ActiveRecord::Migration
  def change
    create_table :macrocycles do |t|

      t.timestamps null: false
    end
  end
end
