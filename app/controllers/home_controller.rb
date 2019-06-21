class HomeController < ApplicationController
  def index
    @produtos = Produto.where("quantidade < 5")
  end
end
