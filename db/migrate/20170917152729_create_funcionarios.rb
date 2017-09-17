class CreateFuncionarios < ActiveRecord::Migration[5.1]
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.date :data_aniversario
      t.integer :criado_por
      t.integer :atualizado_por
      t.string :sexo
      t.string :endereco
      t.string :email
      t.string :bairro
      t.integer :municipio_id
      t.date :data_admissao
      t.date :data_desligamento
      t.string :cep
      t.string :telefone
      t.string :celular
      t.string :cpf
      t.string :matricula

      t.timestamps
    end
  end
end
