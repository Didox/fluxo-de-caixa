require 'test_helper'

class TiposSaidasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipos_saida = tipos_saidas(:one)
  end

  test "should get index" do
    get tipos_saidas_url
    assert_response :success
  end

  test "should get new" do
    get new_tipos_saida_url
    assert_response :success
  end

  test "should create tipos_saida" do
    assert_difference('TiposSaida.count') do
      post tipos_saidas_url, params: { tipos_saida: { tipo: @tipos_saida.tipo } }
    end

    assert_redirected_to tipos_saida_url(TiposSaida.last)
  end

  test "should show tipos_saida" do
    get tipos_saida_url(@tipos_saida)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipos_saida_url(@tipos_saida)
    assert_response :success
  end

  test "should update tipos_saida" do
    patch tipos_saida_url(@tipos_saida), params: { tipos_saida: { tipo: @tipos_saida.tipo } }
    assert_redirected_to tipos_saida_url(@tipos_saida)
  end

  test "should destroy tipos_saida" do
    assert_difference('TiposSaida.count', -1) do
      delete tipos_saida_url(@tipos_saida)
    end

    assert_redirected_to tipos_saidas_url
  end
end
