class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.integer :index
      t.text :name
      t.text :workout_type
      t.integer :duration

      t.timestamps
    end
  end
end
