class Pedido < ApplicationRecord
  validates :placa, presence: true

  before_validation :valida_placa

  def valida_placa
    if Veiculo.where(placa: self.placa).count  == 0
      errors[:base] << 'Placa do veículo não encontrada'
    end
  end
end
