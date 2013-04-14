class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :Name
      t.string :Category
      t.text :Description

      t.timestamps
    end
  end
end
