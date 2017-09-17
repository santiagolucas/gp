class AddEstadoToSolicitantes < ActiveRecord::Migration[5.1]
  def change
    add_column :solicitantes, :estado, :string
  end
end
