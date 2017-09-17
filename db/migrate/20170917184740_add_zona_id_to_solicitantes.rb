class AddZonaIdToSolicitantes < ActiveRecord::Migration[5.1]
  def change
    add_column :solicitantes, :zona_id, :integer
  end
end
