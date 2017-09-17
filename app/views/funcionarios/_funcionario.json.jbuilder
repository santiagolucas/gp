json.extract! funcionario, :id, :nome, :data_aniversario, :criado_por, :atualizado_por, :sexo, :endereco, :email, :bairro, :municipio_id, :data_admissao, :data_desligamento, :cep, :telefone, :celular, :cpf, :matricula, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
