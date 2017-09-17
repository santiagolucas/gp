class CreateCategoria < ActiveRecord::Migration[5.1]
  def change
    create_table :categoria do |t|
      t.string :descricao
      t.integer :criado_por
      t.integer :atualizado_por

      t.timestamps
    end
  end
end
