require 'test_helper'

class SolicitantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitante = solicitantes(:one)
  end

  test "should get index" do
    get solicitantes_url
    assert_response :success
  end

  test "should get new" do
    get new_solicitante_url
    assert_response :success
  end

  test "should create solicitante" do
    assert_difference('Solicitante.count') do
      post solicitantes_url, params: { solicitante: { atualizado_por: @solicitante.atualizado_por, bairro: @solicitante.bairro, categoria_id: @solicitante.categoria_id, celular: @solicitante.celular, cep: @solicitante.cep, comercial: @solicitante.comercial, cpf: @solicitante.cpf, criado_por: @solicitante.criado_por, data_aniversario: @solicitante.data_aniversario, email: @solicitante.email, endereco: @solicitante.endereco, estado_civil_id: @solicitante.estado_civil_id, municipio_id: @solicitante.municipio_id, nome: @solicitante.nome, observacao: @solicitante.observacao, organizacao: @solicitante.organizacao, profissao: @solicitante.profissao, rg: @solicitante.rg, secao: @solicitante.secao, sexo: @solicitante.sexo, telefone_fixo: @solicitante.telefone_fixo, tipo_tratamento: @solicitante.tipo_tratamento, titulo: @solicitante.titulo, zona: @solicitante.zona } }
    end

    assert_redirected_to solicitante_url(Solicitante.last)
  end

  test "should show solicitante" do
    get solicitante_url(@solicitante)
    assert_response :success
  end

  test "should get edit" do
    get edit_solicitante_url(@solicitante)
    assert_response :success
  end

  test "should update solicitante" do
    patch solicitante_url(@solicitante), params: { solicitante: { atualizado_por: @solicitante.atualizado_por, bairro: @solicitante.bairro, categoria_id: @solicitante.categoria_id, celular: @solicitante.celular, cep: @solicitante.cep, comercial: @solicitante.comercial, cpf: @solicitante.cpf, criado_por: @solicitante.criado_por, data_aniversario: @solicitante.data_aniversario, email: @solicitante.email, endereco: @solicitante.endereco, estado_civil_id: @solicitante.estado_civil_id, municipio_id: @solicitante.municipio_id, nome: @solicitante.nome, observacao: @solicitante.observacao, organizacao: @solicitante.organizacao, profissao: @solicitante.profissao, rg: @solicitante.rg, secao: @solicitante.secao, sexo: @solicitante.sexo, telefone_fixo: @solicitante.telefone_fixo, tipo_tratamento: @solicitante.tipo_tratamento, titulo: @solicitante.titulo, zona: @solicitante.zona } }
    assert_redirected_to solicitante_url(@solicitante)
  end

  test "should destroy solicitante" do
    assert_difference('Solicitante.count', -1) do
      delete solicitante_url(@solicitante)
    end

    assert_redirected_to solicitantes_url
  end
end
