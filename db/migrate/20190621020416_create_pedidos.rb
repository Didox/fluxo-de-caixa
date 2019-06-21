class CreatePedidos < ActiveRecord::Migration[5.2]
  def change
    create_table :pedidos do |t|
      t.string :cliente
      t.string :telefone
      t.float :valor_total
      t.float :valor_vendido

      t.timestamps
    end
  end
end
