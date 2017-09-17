class CreateSolicitantes < ActiveRecord::Migration[5.1]
  def change
    create_table :solicitantes do |t|
      t.string :tipo_tratamento
      t.string :nome
      t.string :sexo
      t.date :data_aniversario
      t.string :endereco
      t.string :bairro
      t.string :email
      t.string :profissao
      t.string :organizacao
      t.string :titulo
      t.string :zona
      t.string :secao
      t.text :observacao
      t.integer :categoria_id
      t.integer :municipio_id
      t.integer :criado_por
      t.integer :atualizado_por
      t.string :cep
      t.string :telefone_fixo
      t.string :celular
      t.string :comercial
      t.string :estado_civil_id
      t.string :cpf
      t.string :rg

      t.timestamps
    end
  end
end
