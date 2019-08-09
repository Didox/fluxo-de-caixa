class HomeController < ApplicationController
  def index
    @produtos = Produto.where("quantidade < 5")
  end

  def fluxo_caixa
    entradas = Pedido.valor_total(Pedido::PAGO)
    saidas = Saida.valor_total(Saida::PAGO)
    lucro = (entradas - saidas)

    render json: {
      entradas: entradas,
      saidas: saidas,
      lucro: lucro,
    }, status: 200
  end
end
