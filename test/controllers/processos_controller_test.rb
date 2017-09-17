require 'test_helper'

class ProcessosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @processo = processos(:one)
  end

  test "should get index" do
    get processos_url
    assert_response :success
  end

  test "should get new" do
    get new_processo_url
    assert_response :success
  end

  test "should create processo" do
    assert_difference('Processo.count') do
      post processos_url, params: { processo: { assunto: @processo.assunto, atualizado_por: @processo.atualizado_por, contato: @processo.contato, criado_por: @processo.criado_por, data: @processo.data, descricao: @processo.descricao, local: @processo.local, numero: @processo.numero, situacao: @processo.situacao, tipo: @processo.tipo } }
    end

    assert_redirected_to processo_url(Processo.last)
  end

  test "should show processo" do
    get processo_url(@processo)
    assert_response :success
  end

  test "should get edit" do
    get edit_processo_url(@processo)
    assert_response :success
  end

  test "should update processo" do
    patch processo_url(@processo), params: { processo: { assunto: @processo.assunto, atualizado_por: @processo.atualizado_por, contato: @processo.contato, criado_por: @processo.criado_por, data: @processo.data, descricao: @processo.descricao, local: @processo.local, numero: @processo.numero, situacao: @processo.situacao, tipo: @processo.tipo } }
    assert_redirected_to processo_url(@processo)
  end

  test "should destroy processo" do
    assert_difference('Processo.count', -1) do
      delete processo_url(@processo)
    end

    assert_redirected_to processos_url
  end
end
