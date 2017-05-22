class AddDelayedToTicket < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :delayed, :boolean
    add_column :tickets, :delay_time, :date
  end
end
