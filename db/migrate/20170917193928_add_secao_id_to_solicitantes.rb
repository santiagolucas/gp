class AddSecaoIdToSolicitantes < ActiveRecord::Migration[5.1]
  def change
    add_column :solicitantes, :secao_id, :integer
  end
end
