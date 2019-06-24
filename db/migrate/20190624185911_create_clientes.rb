class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :razao_social
      t.string :cnpj
      t.string :inscricao_estadual
      t.string :inscricao_municipal
      t.text :endereco

      t.timestamps
    end
  end
end
