require "application_system_test_case"

class FuncionariosTest < ApplicationSystemTestCase
  setup do
    @funcionario = funcionarios(:one)
  end

  test "visiting the index" do
    visit funcionarios_url
    assert_selector "h1", text: "Funcionarios"
  end

  test "creating a Funcionario" do
    visit funcionarios_url
    click_on "New Funcionario"

    fill_in "Admissao", with: @funcionario.admissao
    fill_in "Cpf", with: @funcionario.cpf
    fill_in "Data do aso", with: @funcionario.data_do_aso
    fill_in "Email", with: @funcionario.email
    fill_in "Endereco", with: @funcionario.endereco
    fill_in "Funcao", with: @funcionario.funcao
    fill_in "Nascimento", with: @funcionario.nascimento
    fill_in "Nome", with: @funcionario.nome
    fill_in "Rg", with: @funcionario.rg
    fill_in "Telefone", with: @funcionario.telefone
    fill_in "Vencimento cnh", with: @funcionario.vencimento_cnh
    fill_in "Vencimento da integracao", with: @funcionario.vencimento_da_integracao
    fill_in "Vencimento do aso", with: @funcionario.vencimento_do_aso
    click_on "Create Funcionario"

    assert_text "Funcionario was successfully created"
    click_on "Back"
  end

  test "updating a Funcionario" do
    visit funcionarios_url
    click_on "Edit", match: :first

    fill_in "Admissao", with: @funcionario.admissao
    fill_in "Cpf", with: @funcionario.cpf
    fill_in "Data do aso", with: @funcionario.data_do_aso
    fill_in "Email", with: @funcionario.email
    fill_in "Endereco", with: @funcionario.endereco
    fill_in "Funcao", with: @funcionario.funcao
    fill_in "Nascimento", with: @funcionario.nascimento
    fill_in "Nome", with: @funcionario.nome
    fill_in "Rg", with: @funcionario.rg
    fill_in "Telefone", with: @funcionario.telefone
    fill_in "Vencimento cnh", with: @funcionario.vencimento_cnh
    fill_in "Vencimento da integracao", with: @funcionario.vencimento_da_integracao
    fill_in "Vencimento do aso", with: @funcionario.vencimento_do_aso
    click_on "Update Funcionario"

    assert_text "Funcionario was successfully updated"
    click_on "Back"
  end

  test "destroying a Funcionario" do
    visit funcionarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Funcionario was successfully destroyed"
  end
end
