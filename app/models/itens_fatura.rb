class ItensFatura < ApplicationRecord
  belongs_to :fatura

  after_save :create_pedido_or_updade

  before_validation :valida_placa

  def valida_placa
    if Veiculo.where(placa: self.placa).count  == 0
      errors[:base] << 'Placa do veículo não encontrada'
    end
  end

  def create_pedido_or_updade
    pedidos = Pedido.where(numero_fatura: self.fatura.id, placa: self.placa)
    if pedidos.count == 0
      Pedido.create(
        placa: self.placa,
        data_emissao_fatura: self.fatura.emissao,
        descricao: self.descricao,
        numero_fatura: self.fatura.id,
        data_inicio: self.data_inicio,
        data_fim: self.data_fim,
        vencimento: self.fatura.vencimento,
        valor: self.valor,
        status: self.fatura.status
      )
    else
      pedido = pedidos.first
      pedido.data_emissao_fatura = self.fatura.emissao
      pedido.descricao = self.descricao
      pedido.data_inicio = self.data_inicio
      pedido.data_fim = self.data_fim
      pedido.vencimento = self.fatura.vencimento
      pedido.valor = self.valor
      pedido.status = self.fatura.status
      pedido.save!
    end
  end
end
