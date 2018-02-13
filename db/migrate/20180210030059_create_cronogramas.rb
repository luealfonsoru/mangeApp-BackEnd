class CreateCronogramas < ActiveRecord::Migration[5.1]
  def change
    create_table :cronogramas do |t|
      t.string :name

      t.timestamps
    end
  end
end
