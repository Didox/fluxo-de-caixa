class Pedido < ApplicationRecord
  validates :placa, presence: true

  default_scope order('created_at DESC')
  
  before_validation :valida_placa

  def valida_placa
    if Veiculo.where(placa: self.placa).count  == 0
      errors[:base] << 'Placa do veículo não encontrada'
    end
  end

  PAGO = "1"
  AGUARDANDO = "2"
  CANCELADO = "3"

  def self.todos_status
    {
      PAGO => "Pago", 
      AGUARDANDO => "Aguardando",
      CANCELADO => "Cancelado",
    }
  end

  def status_desc
    Pedido.todos_status[self.status.to_s]
  end

  def self.valor_total(status)
    Pedido.where(status: status).sum(:valor)
  end
end
