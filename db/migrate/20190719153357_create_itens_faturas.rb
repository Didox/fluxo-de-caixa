class CreateItensFaturas < ActiveRecord::Migration[5.2]
  def change
    create_table :itens_faturas do |t|
      t.references :fatura, foreign_key: true
      t.string :placa
      t.text :descricao
      t.datetime :data_inicio
      t.datetime :data_fim
      t.float :valor

      t.timestamps
    end
  end
end
