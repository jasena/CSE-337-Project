class AddYearColumnToDays < ActiveRecord::Migration
  def change
    add_column :days, :year, :integer
  end
end
