class CreatePedidoProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :pedido_produtos do |t|
      t.references :pedido, foreign_key: true
      t.string :nome
      t.float :valor

      t.timestamps
    end
  end
end
