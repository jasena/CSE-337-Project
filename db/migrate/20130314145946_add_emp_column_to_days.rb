class AddEmpColumnToDays < ActiveRecord::Migration
  def change
    add_column :days, :emp, :boolean
  end
end
