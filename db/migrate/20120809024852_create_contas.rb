class CreateContas < ActiveRecord::Migration
  def change
    create_table :contas do |t|
      t.string :descricao
      t.integer :parcelas
      t.date :vencimento
      t.float :valor
      t.integer :pago

      t.timestamps
    end
  end
end
