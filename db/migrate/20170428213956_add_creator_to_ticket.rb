class AddCreatorToTicket < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :owner, :string
  end
end
