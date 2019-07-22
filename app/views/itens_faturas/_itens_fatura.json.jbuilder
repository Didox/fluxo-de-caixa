json.extract! itens_fatura, :id, :fatura_id, :placa, :descricao, :data_inicio, :data_fim, :valor, :created_at, :updated_at
json.url itens_fatura_url(itens_fatura, format: :json)
