class CreateActa < ActiveRecord::Migration[5.1]
  def change
    create_table :acta do |t|
      t.date :fecha
      t.string :nombre
      t.integer :consecutivo

      t.references :user_proyect, foreing_key: true

      t.timestamps
    end
  end
end
