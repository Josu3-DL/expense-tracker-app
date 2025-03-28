class CreateExpenses < ActiveRecord::Migration[8.0]
  def change
    create_table :expenses do |t|
      t.string :name
      t.string :category
      t.decimal :ammount

      t.timestamps
    end
  end
end
