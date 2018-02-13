class CreateProyects < ActiveRecord::Migration[5.1]
  def change
    create_table :proyects do |t|
      t.string :name
      t.integer :number
      t.string :description
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
