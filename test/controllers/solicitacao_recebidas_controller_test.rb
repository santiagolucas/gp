require 'test_helper'

class SolicitacaoRecebidasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitacao_recebida = solicitacao_recebidas(:one)
  end

  test "should get index" do
    get solicitacao_recebidas_url
    assert_response :success
  end

  test "should get new" do
    get new_solicitacao_recebida_url
    assert_response :success
  end

  test "should create solicitacao_recebida" do
    assert_difference('SolicitacaoRecebida.count') do
      post solicitacao_recebidas_url, params: { solicitacao_recebida: { atualizado_por: @solicitacao_recebida.atualizado_por, criado_por: @solicitacao_recebida.criado_por, data_abertura: @solicitacao_recebida.data_abertura, data_encerramento: @solicitacao_recebida.data_encerramento, descricao: @solicitacao_recebida.descricao, observacao: @solicitacao_recebida.observacao, solicitante_id: @solicitacao_recebida.solicitante_id, status: @solicitacao_recebida.status } }
    end

    assert_redirected_to solicitacao_recebida_url(SolicitacaoRecebida.last)
  end

  test "should show solicitacao_recebida" do
    get solicitacao_recebida_url(@solicitacao_recebida)
    assert_response :success
  end

  test "should get edit" do
    get edit_solicitacao_recebida_url(@solicitacao_recebida)
    assert_response :success
  end

  test "should update solicitacao_recebida" do
    patch solicitacao_recebida_url(@solicitacao_recebida), params: { solicitacao_recebida: { atualizado_por: @solicitacao_recebida.atualizado_por, criado_por: @solicitacao_recebida.criado_por, data_abertura: @solicitacao_recebida.data_abertura, data_encerramento: @solicitacao_recebida.data_encerramento, descricao: @solicitacao_recebida.descricao, observacao: @solicitacao_recebida.observacao, solicitante_id: @solicitacao_recebida.solicitante_id, status: @solicitacao_recebida.status } }
    assert_redirected_to solicitacao_recebida_url(@solicitacao_recebida)
  end

  test "should destroy solicitacao_recebida" do
    assert_difference('SolicitacaoRecebida.count', -1) do
      delete solicitacao_recebida_url(@solicitacao_recebida)
    end

    assert_redirected_to solicitacao_recebidas_url
  end
end
