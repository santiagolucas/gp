class AddZonaIdToSecao < ActiveRecord::Migration[5.1]
  def change
    add_column :secaos, :zona_id, :integer
  end
end
