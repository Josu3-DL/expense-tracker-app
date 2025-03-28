class CreateGastos < ActiveRecord::Migration[8.0]
  def change
    create_table :gastos do |t|
      t.timestamps
    end
  end
end
