class CreateProcessos < ActiveRecord::Migration[5.1]
  def change
    create_table :processos do |t|
      t.date :data
      t.string :numero
      t.string :assunto
      t.text :descricao
      t.string :situacao
      t.string :local
      t.string :contato
      t.integer :criado_por
      t.integer :atualizado_por
      t.string :tipo

      t.timestamps
    end
  end
end
