class CreateFuncionarios < ActiveRecord::Migration[5.2]
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :telefone
      t.string :email
      t.datetime :nascimento
      t.datetime :admissao
      t.string :rg
      t.string :cpf
      t.string :endereco
      t.string :funcao
      t.datetime :data_do_aso
      t.datetime :vencimento_do_aso
      t.datetime :vencimento_da_integracao
      t.datetime :vencimento_cnh

      t.timestamps
    end
  end
end
