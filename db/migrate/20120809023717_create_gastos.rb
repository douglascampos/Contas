class CreateGastos < ActiveRecord::Migration
  def change
    create_table :gastos do |t|
      t.float :valor
      t.date :data
      t.string :descricao
      t.integer :categoria

      t.timestamps
    end
  end
end
