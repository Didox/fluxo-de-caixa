json.extract! pedido, :id, :cliente, :telefone, :valor_total, :valor_vendido, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
