class RenameUserColumnToExpense < ActiveRecord::Migration[8.0]
  def change
    rename_column :expenses, :user, :user_id
  end
end
