class CreateMesocycles < ActiveRecord::Migration
  def change
    create_table :mesocycles do |t|

      t.timestamps null: false
    end
  end
end
