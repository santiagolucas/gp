class CreateAndamentoSolicitacaoRecebidas < ActiveRecord::Migration[5.1]
  def change
    create_table :andamento_solicitacao_recebidas do |t|
      t.date :data
      t.string :descricao
      t.text :observacao
      t.integer :funcionario_id
      t.integer :solicitacao_recebida_id
      t.integer :criado_por
      t.integer :atualizado_por

      t.timestamps
    end
  end
end
