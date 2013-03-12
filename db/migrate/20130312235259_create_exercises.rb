class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.text :name
      t.text :type
      t.integer :duration

      t.timestamps
    end
  end
end
