class CreateAndamentoSolicitacaoEnviadas < ActiveRecord::Migration[5.1]
  def change
    create_table :andamento_solicitacao_enviadas do |t|
      t.date :data
      t.string :descricao
      t.text :observacao
      t.integer :funcionario_id
      t.integer :solicitacao_enviada_id
      t.integer :criado_por
      t.integer :atualizado_por

      t.timestamps
    end
  end
end
