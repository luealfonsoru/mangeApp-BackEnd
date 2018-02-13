class CreateCompromisos < ActiveRecord::Migration[5.1]
  def change
    create_table :compromisos do |t|
      t.date :fecha
      t.string :nombre
      t.string :responsable
      t.references :actum, foreign_key: true
      t.boolean :done 

      t.timestamps
    end
  end
end
