class AddReferencesToTickets < ActiveRecord::Migration[5.0]
  def change
    add_reference :tickets, :operator, foreign_key: true
  end
end
