require "application_system_test_case"

class ClientesTest < ApplicationSystemTestCase
  setup do
    @cliente = clientes(:one)
  end

  test "visiting the index" do
    visit clientes_url
    assert_selector "h1", text: "Clientes"
  end

  test "creating a Cliente" do
    visit clientes_url
    click_on "New Cliente"

    fill_in "Cpf", with: @cliente.cpf
    fill_in "Data de nascimento", with: @cliente.data_de_nascimento
    fill_in "Email", with: @cliente.email
    fill_in "Idade", with: @cliente.idade
    fill_in "Nome", with: @cliente.nome
    fill_in "Rg", with: @cliente.rg
    fill_in "Telefone", with: @cliente.telefone
    fill_in "Uf", with: @cliente.uf
    click_on "Create Cliente"

    assert_text "Cliente was successfully created"
    click_on "Back"
  end

  test "updating a Cliente" do
    visit clientes_url
    click_on "Edit", match: :first

    fill_in "Cpf", with: @cliente.cpf
    fill_in "Data de nascimento", with: @cliente.data_de_nascimento
    fill_in "Email", with: @cliente.email
    fill_in "Idade", with: @cliente.idade
    fill_in "Nome", with: @cliente.nome
    fill_in "Rg", with: @cliente.rg
    fill_in "Telefone", with: @cliente.telefone
    fill_in "Uf", with: @cliente.uf
    click_on "Update Cliente"

    assert_text "Cliente was successfully updated"
    click_on "Back"
  end

  test "destroying a Cliente" do
    visit clientes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cliente was successfully destroyed"
  end
end
