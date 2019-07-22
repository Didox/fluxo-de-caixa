class CreateFaturas < ActiveRecord::Migration[5.2]
  def change
    create_table :faturas do |t|
      t.datetime :emissao
      t.datetime :vencimento
      t.references :cliente, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
