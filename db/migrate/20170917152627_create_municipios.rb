class CreateMunicipios < ActiveRecord::Migration[5.1]
  def change
    create_table :municipios do |t|
      t.string :nome
      t.integer :estado_id
      t.integer :criado_por
      t.integer :atualizado_por

      t.timestamps
    end
  end
end
