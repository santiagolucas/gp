require 'test_helper'

class FuncionariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @funcionario = funcionarios(:one)
  end

  test "should get index" do
    get funcionarios_url
    assert_response :success
  end

  test "should get new" do
    get new_funcionario_url
    assert_response :success
  end

  test "should create funcionario" do
    assert_difference('Funcionario.count') do
      post funcionarios_url, params: { funcionario: { atualizado_por: @funcionario.atualizado_por, bairro: @funcionario.bairro, celular: @funcionario.celular, cep: @funcionario.cep, cpf: @funcionario.cpf, criado_por: @funcionario.criado_por, data_admissao: @funcionario.data_admissao, data_aniversario: @funcionario.data_aniversario, data_desligamento: @funcionario.data_desligamento, email: @funcionario.email, endereco: @funcionario.endereco, matricula: @funcionario.matricula, municipio_id: @funcionario.municipio_id, nome: @funcionario.nome, sexo: @funcionario.sexo, telefone: @funcionario.telefone } }
    end

    assert_redirected_to funcionario_url(Funcionario.last)
  end

  test "should show funcionario" do
    get funcionario_url(@funcionario)
    assert_response :success
  end

  test "should get edit" do
    get edit_funcionario_url(@funcionario)
    assert_response :success
  end

  test "should update funcionario" do
    patch funcionario_url(@funcionario), params: { funcionario: { atualizado_por: @funcionario.atualizado_por, bairro: @funcionario.bairro, celular: @funcionario.celular, cep: @funcionario.cep, cpf: @funcionario.cpf, criado_por: @funcionario.criado_por, data_admissao: @funcionario.data_admissao, data_aniversario: @funcionario.data_aniversario, data_desligamento: @funcionario.data_desligamento, email: @funcionario.email, endereco: @funcionario.endereco, matricula: @funcionario.matricula, municipio_id: @funcionario.municipio_id, nome: @funcionario.nome, sexo: @funcionario.sexo, telefone: @funcionario.telefone } }
    assert_redirected_to funcionario_url(@funcionario)
  end

  test "should destroy funcionario" do
    assert_difference('Funcionario.count', -1) do
      delete funcionario_url(@funcionario)
    end

    assert_redirected_to funcionarios_url
  end
end
