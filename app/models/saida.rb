class Saida < ApplicationRecord
  validates :placa, presence: true

  default_scope { order(vencimento: :desc) }
  
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
    Saida.todos_status[self.status.to_s]
  end

  def self.valor_total(status, start_date=nil, end_date=nil)
    start_date = Time.now.beginning_of_month if start_date.blank?
    end_date = Time.now.end_of_month if end_date.blank?

    Saida.where(status: status).where("vencimento BETWEEN ? AND ?", start_date, end_date).sum(:valor)
  end
end
