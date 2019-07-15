json.extract! pedido_produto, :id, :pedido_id, :nome, :valor, :created_at, :updated_at
json.url pedido_produto_url(pedido_produto, format: :json)
