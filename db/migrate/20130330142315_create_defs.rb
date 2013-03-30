class CreateDefs < ActiveRecord::Migration
  def change
    create_table :defs do |t|
      t.text :ecto
      t.text :meso
      t.text :endo

      t.timestamps
    end
  end
end
