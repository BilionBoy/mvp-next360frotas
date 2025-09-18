require "application_system_test_case"

class GCondutorsTest < ApplicationSystemTestCase
  setup do
    @g_condutor = g_condutores(:one)
  end

  test "visiting the index" do
    visit g_condutores_url
    assert_selector "h1", text: "G condutors"
  end

  test "should create g condutor" do
    visit g_condutores_url
    click_on "New g condutor"

    fill_in "Atualizado em", with: @g_condutor.atualizado_em
    fill_in "Cnh categoria", with: @g_condutor.cnh_categoria
    fill_in "Cnh numero", with: @g_condutor.cnh_numero
    fill_in "Criado em", with: @g_condutor.criado_em
    fill_in "Email", with: @g_condutor.email
    fill_in "G status", with: @g_condutor.g_status_id
    fill_in "Nome", with: @g_condutor.nome
    fill_in "Senha", with: @g_condutor.senha
    fill_in "Telefone", with: @g_condutor.telefone
    fill_in "Validade cnh", with: @g_condutor.validade_cnh
    click_on "Create G condutor"

    assert_text "G condutor was successfully created"
    click_on "Back"
  end

  test "should update G condutor" do
    visit g_condutor_url(@g_condutor)
    click_on "Edit this g condutor", match: :first

    fill_in "Atualizado em", with: @g_condutor.atualizado_em.to_s
    fill_in "Cnh categoria", with: @g_condutor.cnh_categoria
    fill_in "Cnh numero", with: @g_condutor.cnh_numero
    fill_in "Criado em", with: @g_condutor.criado_em.to_s
    fill_in "Email", with: @g_condutor.email
    fill_in "G status", with: @g_condutor.g_status_id
    fill_in "Nome", with: @g_condutor.nome
    fill_in "Senha", with: @g_condutor.senha
    fill_in "Telefone", with: @g_condutor.telefone
    fill_in "Validade cnh", with: @g_condutor.validade_cnh
    click_on "Update G condutor"

    assert_text "G condutor was successfully updated"
    click_on "Back"
  end

  test "should destroy G condutor" do
    visit g_condutor_url(@g_condutor)
    click_on "Destroy this g condutor", match: :first

    assert_text "G condutor was successfully destroyed"
  end
end
