class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :kind
      t.date :workout_date
      t.string :duration

      t.timestamps
    end
  end
end
