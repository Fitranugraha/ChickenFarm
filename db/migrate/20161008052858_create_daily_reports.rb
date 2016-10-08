class CreateDailyReports < ActiveRecord::Migration[5.0]
  def change
    create_table :daily_reports do |t|
      t.date :report_date
      t.integer :age
      t.text :remedy
      t.integer :feed_recieved
      t.integer :feed_actual
      t.integer :feed_remains
      t.float :average_weight
      t.integer :mortality
      t.float :average_temperature
      t.float :average_hummidity
      t.string :stockman
      t.text :notes
      t.references :periode, foreign_key: true

      t.timestamps
    end
  end
end
