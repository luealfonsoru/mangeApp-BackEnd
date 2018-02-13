class CreateEntregables < ActiveRecord::Migration[5.1]
  def change
    create_table :entregables do |t|
      t.string :name

      t.timestamps
    end
  end
end
