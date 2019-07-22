require 'test_helper'

class ItensFaturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @itens_fatura = itens_faturas(:one)
  end

  test "should get index" do
    get itens_faturas_url
    assert_response :success
  end

  test "should get new" do
    get new_itens_fatura_url
    assert_response :success
  end

  test "should create itens_fatura" do
    assert_difference('ItensFatura.count') do
      post itens_faturas_url, params: { itens_fatura: { data_fim: @itens_fatura.data_fim, data_inicio: @itens_fatura.data_inicio, descricao: @itens_fatura.descricao, fatura_id: @itens_fatura.fatura_id, placa: @itens_fatura.placa, valor: @itens_fatura.valor } }
    end

    assert_redirected_to itens_fatura_url(ItensFatura.last)
  end

  test "should show itens_fatura" do
    get itens_fatura_url(@itens_fatura)
    assert_response :success
  end

  test "should get edit" do
    get edit_itens_fatura_url(@itens_fatura)
    assert_response :success
  end

  test "should update itens_fatura" do
    patch itens_fatura_url(@itens_fatura), params: { itens_fatura: { data_fim: @itens_fatura.data_fim, data_inicio: @itens_fatura.data_inicio, descricao: @itens_fatura.descricao, fatura_id: @itens_fatura.fatura_id, placa: @itens_fatura.placa, valor: @itens_fatura.valor } }
    assert_redirected_to itens_fatura_url(@itens_fatura)
  end

  test "should destroy itens_fatura" do
    assert_difference('ItensFatura.count', -1) do
      delete itens_fatura_url(@itens_fatura)
    end

    assert_redirected_to itens_faturas_url
  end
end
