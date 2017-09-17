json.extract! processo, :id, :data, :numero, :assunto, :descricao, :situacao, :local, :contato, :criado_por, :atualizado_por, :tipo, :created_at, :updated_at
json.url processo_url(processo, format: :json)
