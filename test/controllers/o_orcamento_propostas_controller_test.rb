require "test_helper"

class OOrcamentoPropostasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @o_orcamento_proposta = o_orcamento_propostas(:one)
  end

  test "should get index" do
    get o_orcamento_propostas_url
    assert_response :success
  end

  test "should get new" do
    get new_o_orcamento_proposta_url
    assert_response :success
  end

  test "should create o_orcamento_proposta" do
    assert_difference("OOrcamentoProposta.count") do
      post o_orcamento_propostas_url, params: { o_orcamento_proposta: { aprovado_em: @o_orcamento_proposta.aprovado_em, aprovado_por: @o_orcamento_proposta.aprovado_por, o_orcamento_id: @o_orcamento_proposta.o_orcamento_id, o_proposta_id: @o_orcamento_proposta.o_proposta_id, o_status_aprovacao_id: @o_orcamento_proposta.o_status_aprovacao_id } }
    end

    assert_redirected_to o_orcamento_proposta_url(OOrcamentoProposta.last)
  end

  test "should show o_orcamento_proposta" do
    get o_orcamento_proposta_url(@o_orcamento_proposta)
    assert_response :success
  end

  test "should get edit" do
    get edit_o_orcamento_proposta_url(@o_orcamento_proposta)
    assert_response :success
  end

  test "should update o_orcamento_proposta" do
    patch o_orcamento_proposta_url(@o_orcamento_proposta), params: { o_orcamento_proposta: { aprovado_em: @o_orcamento_proposta.aprovado_em, aprovado_por: @o_orcamento_proposta.aprovado_por, o_orcamento_id: @o_orcamento_proposta.o_orcamento_id, o_proposta_id: @o_orcamento_proposta.o_proposta_id, o_status_aprovacao_id: @o_orcamento_proposta.o_status_aprovacao_id } }
    assert_redirected_to o_orcamento_proposta_url(@o_orcamento_proposta)
  end

  test "should destroy o_orcamento_proposta" do
    assert_difference("OOrcamentoProposta.count", -1) do
      delete o_orcamento_proposta_url(@o_orcamento_proposta)
    end

    assert_redirected_to o_orcamento_propostas_url
  end
end
