class CreatePedidos < ActiveRecord::Migration[5.2]
  def change
    create_table :pedidos do |t|
      t.string :placa
      t.date :data_emissao_fatura
      t.text :descricao
      t.string :numero_fatura
      t.date :data_inicio
      t.date :data_fim
      t.date :vencimento
      t.float :valor

      t.timestamps
    end
  end
end
