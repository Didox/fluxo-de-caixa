json.extract! fatura, :id, :emissao, :vencimento, :cliente_id, :status, :created_at, :updated_at
json.url fatura_url(fatura, format: :json)
