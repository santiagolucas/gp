json.extract! solicitacao_recebida, :id, :solicitante_id, :descricao, :data_abertura, :data_encerramento, :observacao, :status, :criado_por, :atualizado_por, :created_at, :updated_at
json.url solicitacao_recebida_url(solicitacao_recebida, format: :json)
