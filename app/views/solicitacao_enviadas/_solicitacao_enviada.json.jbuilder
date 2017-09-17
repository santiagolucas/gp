json.extract! solicitacao_enviada, :id, :local, :descricao, :data_abertura, :data_encerramento, :observacao, :status, :criado_por, :atualizado_por, :created_at, :updated_at
json.url solicitacao_enviada_url(solicitacao_enviada, format: :json)
