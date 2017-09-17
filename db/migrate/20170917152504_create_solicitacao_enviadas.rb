class CreateSolicitacaoEnviadas < ActiveRecord::Migration[5.1]
  def change
    create_table :solicitacao_enviadas do |t|
      t.string :local
      t.string :descricao
      t.date :data_abertura
      t.date :data_encerramento
      t.text :observacao
      t.string :status
      t.integer :criado_por
      t.integer :atualizado_por

      t.timestamps
    end
  end
end
