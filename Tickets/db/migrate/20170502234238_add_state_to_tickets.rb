class AddStateToTickets < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :state, :integer
  end
end
