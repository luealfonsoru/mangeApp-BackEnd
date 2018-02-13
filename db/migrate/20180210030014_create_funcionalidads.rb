class CreateFuncionalidads < ActiveRecord::Migration[5.1]
  def change
    create_table :funcionalidads do |t|
      t.string :name

      t.timestamps
    end
  end
end
