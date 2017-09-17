json.extract! solicitante, :id, :tipo_tratamento, :nome, :sexo, :data_aniversario, :endereco, :bairro, :email, :profissao, :organizacao, :titulo, :zona, :secao, :observacao, :categoria_id, :municipio_id, :criado_por, :atualizado_por, :cep, :telefone_fixo, :celular, :comercial, :estado_civil_id, :cpf, :rg, :created_at, :updated_at
json.url solicitante_url(solicitante, format: :json)
