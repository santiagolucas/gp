require 'test_helper'

class AndamentoSolicitacaoEnviadasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @andamento_solicitacao_enviada = andamento_solicitacao_enviadas(:one)
  end

  test "should get index" do
    get andamento_solicitacao_enviadas_url
    assert_response :success
  end

  test "should get new" do
    get new_andamento_solicitacao_enviada_url
    assert_response :success
  end

  test "should create andamento_solicitacao_enviada" do
    assert_difference('AndamentoSolicitacaoEnviada.count') do
      post andamento_solicitacao_enviadas_url, params: { andamento_solicitacao_enviada: { atualizado_por: @andamento_solicitacao_enviada.atualizado_por, criado_por: @andamento_solicitacao_enviada.criado_por, data: @andamento_solicitacao_enviada.data, descricao: @andamento_solicitacao_enviada.descricao, funcionario_id: @andamento_solicitacao_enviada.funcionario_id, observacao: @andamento_solicitacao_enviada.observacao, solicitacao_enviada_id: @andamento_solicitacao_enviada.solicitacao_enviada_id } }
    end

    assert_redirected_to andamento_solicitacao_enviada_url(AndamentoSolicitacaoEnviada.last)
  end

  test "should show andamento_solicitacao_enviada" do
    get andamento_solicitacao_enviada_url(@andamento_solicitacao_enviada)
    assert_response :success
  end

  test "should get edit" do
    get edit_andamento_solicitacao_enviada_url(@andamento_solicitacao_enviada)
    assert_response :success
  end

  test "should update andamento_solicitacao_enviada" do
    patch andamento_solicitacao_enviada_url(@andamento_solicitacao_enviada), params: { andamento_solicitacao_enviada: { atualizado_por: @andamento_solicitacao_enviada.atualizado_por, criado_por: @andamento_solicitacao_enviada.criado_por, data: @andamento_solicitacao_enviada.data, descricao: @andamento_solicitacao_enviada.descricao, funcionario_id: @andamento_solicitacao_enviada.funcionario_id, observacao: @andamento_solicitacao_enviada.observacao, solicitacao_enviada_id: @andamento_solicitacao_enviada.solicitacao_enviada_id } }
    assert_redirected_to andamento_solicitacao_enviada_url(@andamento_solicitacao_enviada)
  end

  test "should destroy andamento_solicitacao_enviada" do
    assert_difference('AndamentoSolicitacaoEnviada.count', -1) do
      delete andamento_solicitacao_enviada_url(@andamento_solicitacao_enviada)
    end

    assert_redirected_to andamento_solicitacao_enviadas_url
  end
end
