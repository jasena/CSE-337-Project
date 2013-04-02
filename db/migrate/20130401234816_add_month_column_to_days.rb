class AddMonthColumnToDays < ActiveRecord::Migration
  def change
    add_column :days, :month, :string
  end
end
