json.extract! funcionario, :id, :nome, :telefone, :email, :nascimento, :admissao, :rg, :cpf, :endereco, :funcao, :data_do_aso, :vencimento_do_aso, :vencimento_da_integracao, :vencimento_cnh, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
