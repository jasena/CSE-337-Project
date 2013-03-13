class FixColumnName < ActiveRecord::Migration
  def up
    rename_column :exercises, :type, :workout_type
  end

  def down
    rename_column :exercises, :workout_type, :type
  end
end
