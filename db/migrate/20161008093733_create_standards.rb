class CreateStandards < ActiveRecord::Migration[5.0]
  def change
    create_table :standards do |t|
      t.integer :age_day
      t.float :avg_bw
      t.float :percent_mort
      t.float :fcr
      t.integer :std_eef

      t.timestamps
    end
  end
end
