class CreateSecaos < ActiveRecord::Migration[5.1]
  def change
    create_table :secaos do |t|
      t.string :numero
      t.references :zona, foreign_key: true

      t.timestamps
    end
  end
end
