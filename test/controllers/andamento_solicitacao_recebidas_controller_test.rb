require 'test_helper'

class AndamentoSolicitacaoRecebidasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @andamento_solicitacao_recebida = andamento_solicitacao_recebidas(:one)
  end

  test "should get index" do
    get andamento_solicitacao_recebidas_url
    assert_response :success
  end

  test "should get new" do
    get new_andamento_solicitacao_recebida_url
    assert_response :success
  end

  test "should create andamento_solicitacao_recebida" do
    assert_difference('AndamentoSolicitacaoRecebida.count') do
      post andamento_solicitacao_recebidas_url, params: { andamento_solicitacao_recebida: { atualizado_por: @andamento_solicitacao_recebida.atualizado_por, criado_por: @andamento_solicitacao_recebida.criado_por, data: @andamento_solicitacao_recebida.data, descricao: @andamento_solicitacao_recebida.descricao, funcionario_id: @andamento_solicitacao_recebida.funcionario_id, observacao: @andamento_solicitacao_recebida.observacao, solicitacao_recebida_id: @andamento_solicitacao_recebida.solicitacao_recebida_id } }
    end

    assert_redirected_to andamento_solicitacao_recebida_url(AndamentoSolicitacaoRecebida.last)
  end

  test "should show andamento_solicitacao_recebida" do
    get andamento_solicitacao_recebida_url(@andamento_solicitacao_recebida)
    assert_response :success
  end

  test "should get edit" do
    get edit_andamento_solicitacao_recebida_url(@andamento_solicitacao_recebida)
    assert_response :success
  end

  test "should update andamento_solicitacao_recebida" do
    patch andamento_solicitacao_recebida_url(@andamento_solicitacao_recebida), params: { andamento_solicitacao_recebida: { atualizado_por: @andamento_solicitacao_recebida.atualizado_por, criado_por: @andamento_solicitacao_recebida.criado_por, data: @andamento_solicitacao_recebida.data, descricao: @andamento_solicitacao_recebida.descricao, funcionario_id: @andamento_solicitacao_recebida.funcionario_id, observacao: @andamento_solicitacao_recebida.observacao, solicitacao_recebida_id: @andamento_solicitacao_recebida.solicitacao_recebida_id } }
    assert_redirected_to andamento_solicitacao_recebida_url(@andamento_solicitacao_recebida)
  end

  test "should destroy andamento_solicitacao_recebida" do
    assert_difference('AndamentoSolicitacaoRecebida.count', -1) do
      delete andamento_solicitacao_recebida_url(@andamento_solicitacao_recebida)
    end

    assert_redirected_to andamento_solicitacao_recebidas_url
  end
end
