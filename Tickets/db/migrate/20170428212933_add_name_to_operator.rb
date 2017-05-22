class AddNameToOperator < ActiveRecord::Migration[5.0]
  def change
    add_column :operators, :name, :string
  end
end
