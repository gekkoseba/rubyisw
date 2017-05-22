class AddRoleToOperators < ActiveRecord::Migration[5.0]
  def change
    add_column :operators, :role, :integer, default: 0
  end
end