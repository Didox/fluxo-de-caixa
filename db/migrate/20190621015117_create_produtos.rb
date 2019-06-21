class CreateProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.float :tamanho
      t.float :peso
      t.integer :quantidade
      t.float :valor

      t.timestamps
    end
  end
end
