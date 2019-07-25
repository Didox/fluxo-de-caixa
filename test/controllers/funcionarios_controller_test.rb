require 'test_helper'

class FuncionariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @funcionario = funcionarios(:one)
  end

  test "should get index" do
    get funcionarios_url
    assert_response :success
  end

  test "should get new" do
    get new_funcionario_url
    assert_response :success
  end

  test "should create funcionario" do
    assert_difference('Funcionario.count') do
      post funcionarios_url, params: { funcionario: { admissao: @funcionario.admissao, cpf: @funcionario.cpf, data_do_aso: @funcionario.data_do_aso, email: @funcionario.email, endereco: @funcionario.endereco, funcao: @funcionario.funcao, nascimento: @funcionario.nascimento, nome: @funcionario.nome, rg: @funcionario.rg, telefone: @funcionario.telefone, vencimento_cnh: @funcionario.vencimento_cnh, vencimento_da_integracao: @funcionario.vencimento_da_integracao, vencimento_do_aso: @funcionario.vencimento_do_aso } }
    end

    assert_redirected_to funcionario_url(Funcionario.last)
  end

  test "should show funcionario" do
    get funcionario_url(@funcionario)
    assert_response :success
  end

  test "should get edit" do
    get edit_funcionario_url(@funcionario)
    assert_response :success
  end

  test "should update funcionario" do
    patch funcionario_url(@funcionario), params: { funcionario: { admissao: @funcionario.admissao, cpf: @funcionario.cpf, data_do_aso: @funcionario.data_do_aso, email: @funcionario.email, endereco: @funcionario.endereco, funcao: @funcionario.funcao, nascimento: @funcionario.nascimento, nome: @funcionario.nome, rg: @funcionario.rg, telefone: @funcionario.telefone, vencimento_cnh: @funcionario.vencimento_cnh, vencimento_da_integracao: @funcionario.vencimento_da_integracao, vencimento_do_aso: @funcionario.vencimento_do_aso } }
    assert_redirected_to funcionario_url(@funcionario)
  end

  test "should destroy funcionario" do
    assert_difference('Funcionario.count', -1) do
      delete funcionario_url(@funcionario)
    end

    assert_redirected_to funcionarios_url
  end
end
