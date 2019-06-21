json.extract! produto, :id, :nome, :tamanho, :peso, :quantidade, :valor, :created_at, :updated_at
json.url produto_url(produto, format: :json)
