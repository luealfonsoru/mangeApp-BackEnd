class CreateTareas < ActiveRecord::Migration[5.1]
  def change
    create_table :tareas do |t|
      t.integer :numero
      t.string :serial
      t.references :user_proyect, foreign_key: true
      t.date :fecha
      t.date :semana
      t.float :horas
      t.references :funcionalidad, foreign_key: true
      t.references :cronograma, foreign_key: true
      t.references :entregable, foreign_key: true
      t.string :descripcion
      t.date :solicitud
      t.string :estado
      t.boolean :review
      t.references :user, foreign_key: :true
      t.string :review_description

      t.timestamps
    end
  end
end
