class AddEstadoIdToSolicitantes < ActiveRecord::Migration[5.1]
  def change
    add_column :solicitantes, :estado_id, :integer
  end
end
