class AddColummnDateToExpenses < ActiveRecord::Migration[8.0]
  def change
    add_column :expenses, :date, :date
  
  end
end
