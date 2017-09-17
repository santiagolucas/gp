class CreateZonas < ActiveRecord::Migration[5.1]
  def change
    create_table :zonas do |t|
      t.string :numero

      t.timestamps
    end
  end
end
