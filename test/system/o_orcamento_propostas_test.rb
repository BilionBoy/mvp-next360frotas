require "application_system_test_case"

class OOrcamentoPropostaTest < ApplicationSystemTestCase
  setup do
    @o_orcamento_proposta = o_orcamento_propostas(:one)
  end

  test "visiting the index" do
    visit o_orcamento_propostas_url
    assert_selector "h1", text: "O orcamento proposta"
  end

  test "should create o orcamento proposta" do
    visit o_orcamento_propostas_url
    click_on "New o orcamento proposta"

    fill_in "Aprovado em", with: @o_orcamento_proposta.aprovado_em
    fill_in "Aprovado por", with: @o_orcamento_proposta.aprovado_por
    fill_in "O orcamento", with: @o_orcamento_proposta.o_orcamento_id
    fill_in "O proposta", with: @o_orcamento_proposta.o_proposta_id
    fill_in "O status aprovacao", with: @o_orcamento_proposta.o_status_aprovacao_id
    click_on "Create O orcamento proposta"

    assert_text "O orcamento proposta was successfully created"
    click_on "Back"
  end

  test "should update O orcamento proposta" do
    visit o_orcamento_proposta_url(@o_orcamento_proposta)
    click_on "Edit this o orcamento proposta", match: :first

    fill_in "Aprovado em", with: @o_orcamento_proposta.aprovado_em.to_s
    fill_in "Aprovado por", with: @o_orcamento_proposta.aprovado_por
    fill_in "O orcamento", with: @o_orcamento_proposta.o_orcamento_id
    fill_in "O proposta", with: @o_orcamento_proposta.o_proposta_id
    fill_in "O status aprovacao", with: @o_orcamento_proposta.o_status_aprovacao_id
    click_on "Update O orcamento proposta"

    assert_text "O orcamento proposta was successfully updated"
    click_on "Back"
  end

  test "should destroy O orcamento proposta" do
    visit o_orcamento_proposta_url(@o_orcamento_proposta)
    click_on "Destroy this o orcamento proposta", match: :first

    assert_text "O orcamento proposta was successfully destroyed"
  end
end
