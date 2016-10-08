class CreateHenhouses < ActiveRecord::Migration[5.0]
  def change
    create_table :henhouses do |t|
      t.string :no
      t.string :name
      t.text :description
      t.integer :capacity

      t.timestamps
    end
  end
end
