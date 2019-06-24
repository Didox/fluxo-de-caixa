json.extract! cliente, :id, :razao_social, :cnpj, :inscricao_estadual, :inscricao_municipal, :endereco, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
