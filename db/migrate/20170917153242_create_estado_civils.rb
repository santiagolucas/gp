class CreateEstadoCivils < ActiveRecord::Migration[5.1]
  def change
    create_table :estado_civils do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
