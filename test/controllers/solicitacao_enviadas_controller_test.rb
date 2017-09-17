require 'test_helper'

class SolicitacaoEnviadasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitacao_enviada = solicitacao_enviadas(:one)
  end

  test "should get index" do
    get solicitacao_enviadas_url
    assert_response :success
  end

  test "should get new" do
    get new_solicitacao_enviada_url
    assert_response :success
  end

  test "should create solicitacao_enviada" do
    assert_difference('SolicitacaoEnviada.count') do
      post solicitacao_enviadas_url, params: { solicitacao_enviada: { atualizado_por: @solicitacao_enviada.atualizado_por, criado_por: @solicitacao_enviada.criado_por, data_abertura: @solicitacao_enviada.data_abertura, data_encerramento: @solicitacao_enviada.data_encerramento, descricao: @solicitacao_enviada.descricao, local: @solicitacao_enviada.local, observacao: @solicitacao_enviada.observacao, status: @solicitacao_enviada.status } }
    end

    assert_redirected_to solicitacao_enviada_url(SolicitacaoEnviada.last)
  end

  test "should show solicitacao_enviada" do
    get solicitacao_enviada_url(@solicitacao_enviada)
    assert_response :success
  end

  test "should get edit" do
    get edit_solicitacao_enviada_url(@solicitacao_enviada)
    assert_response :success
  end

  test "should update solicitacao_enviada" do
    patch solicitacao_enviada_url(@solicitacao_enviada), params: { solicitacao_enviada: { atualizado_por: @solicitacao_enviada.atualizado_por, criado_por: @solicitacao_enviada.criado_por, data_abertura: @solicitacao_enviada.data_abertura, data_encerramento: @solicitacao_enviada.data_encerramento, descricao: @solicitacao_enviada.descricao, local: @solicitacao_enviada.local, observacao: @solicitacao_enviada.observacao, status: @solicitacao_enviada.status } }
    assert_redirected_to solicitacao_enviada_url(@solicitacao_enviada)
  end

  test "should destroy solicitacao_enviada" do
    assert_difference('SolicitacaoEnviada.count', -1) do
      delete solicitacao_enviada_url(@solicitacao_enviada)
    end

    assert_redirected_to solicitacao_enviadas_url
  end
end
