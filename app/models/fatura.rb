class Fatura < ApplicationRecord
  belongs_to :cliente
  has_many :itens_faturas

  default_scope { order(id: :desc) }

  before_validation :update_status
  after_save :update_status_entradas

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
    Fatura.todos_status[self.status.to_s]
  end

  private

  def update_status
  	if self.status.blank?
  	  self.status = AGUARDANDO
  	end
  end

  def update_status_entradas
  	self.itens_faturas.each do |itens_fatura|
      itens_fatura.create_pedido_or_updade
  	end
  end
end
