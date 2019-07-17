json.extract! saida, :id, :placa, :data_emissao_fatura, :descricao, :numero_fatura, :vencimento, :valor, :created_at, :updated_at
json.url saida_url(saida, format: :json)
