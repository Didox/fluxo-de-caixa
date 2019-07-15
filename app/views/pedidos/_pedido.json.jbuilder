json.extract! pedido, :id, :placa, :data_emissao_fatura, :descricao, :numero_fatura, :data_inicio, :data_fim, :vencimento, :valor, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
