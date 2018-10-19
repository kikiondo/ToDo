class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :nombre
      t.integer :id_usuario

      t.timestamps
    end
  end
end
