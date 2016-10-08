class CreatePeriodes < ActiveRecord::Migration[5.0]
  def change
    create_table :periodes do |t|
      t.string :no
      t.string :code
      t.text :description
      t.date :start_date
      t.date :end_date
      t.integer :total_do

      t.timestamps
    end
  end
end
