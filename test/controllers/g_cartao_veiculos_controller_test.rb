require "test_helper"

class GCartaoVeiculosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @g_cartao_veiculo = g_cartao_veiculos(:one)
  end

  test "should get index" do
    get g_cartao_veiculos_url
    assert_response :success
  end

  test "should get new" do
    get new_g_cartao_veiculo_url
    assert_response :success
  end

  test "should create g_cartao_veiculo" do
    assert_difference("GCartaoVeiculo.count") do
      post g_cartao_veiculos_url, params: { g_cartao_veiculo: { numero_cartao: @g_cartao_veiculo.numero_cartao } }
    end

    assert_redirected_to g_cartao_veiculo_url(GCartaoVeiculo.last)
  end

  test "should show g_cartao_veiculo" do
    get g_cartao_veiculo_url(@g_cartao_veiculo)
    assert_response :success
  end

  test "should get edit" do
    get edit_g_cartao_veiculo_url(@g_cartao_veiculo)
    assert_response :success
  end

  test "should update g_cartao_veiculo" do
    patch g_cartao_veiculo_url(@g_cartao_veiculo), params: { g_cartao_veiculo: { numero_cartao: @g_cartao_veiculo.numero_cartao } }
    assert_redirected_to g_cartao_veiculo_url(@g_cartao_veiculo)
  end

  test "should destroy g_cartao_veiculo" do
    assert_difference("GCartaoVeiculo.count", -1) do
      delete g_cartao_veiculo_url(@g_cartao_veiculo)
    end

    assert_redirected_to g_cartao_veiculos_url
  end
end
