class CreateMicocycles < ActiveRecord::Migration
  def change
    create_table :micocycles do |t|

      t.timestamps null: false
    end
  end
end
