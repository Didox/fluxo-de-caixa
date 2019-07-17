require 'test_helper'

class SaidasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @saida = saidas(:one)
  end

  test "should get index" do
    get saidas_url
    assert_response :success
  end

  test "should get new" do
    get new_saida_url
    assert_response :success
  end

  test "should create saida" do
    assert_difference('Saida.count') do
      post saidas_url, params: { saida: { data_emissao_fatura: @saida.data_emissao_fatura, descricao: @saida.descricao, numero_fatura: @saida.numero_fatura, placa: @saida.placa, valor: @saida.valor, vencimento: @saida.vencimento } }
    end

    assert_redirected_to saida_url(Saida.last)
  end

  test "should show saida" do
    get saida_url(@saida)
    assert_response :success
  end

  test "should get edit" do
    get edit_saida_url(@saida)
    assert_response :success
  end

  test "should update saida" do
    patch saida_url(@saida), params: { saida: { data_emissao_fatura: @saida.data_emissao_fatura, descricao: @saida.descricao, numero_fatura: @saida.numero_fatura, placa: @saida.placa, valor: @saida.valor, vencimento: @saida.vencimento } }
    assert_redirected_to saida_url(@saida)
  end

  test "should destroy saida" do
    assert_difference('Saida.count', -1) do
      delete saida_url(@saida)
    end

    assert_redirected_to saidas_url
  end
end
