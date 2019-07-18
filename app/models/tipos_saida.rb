class TiposSaida < ApplicationRecord
  default_scope { order(tipo: :asc) }
end
