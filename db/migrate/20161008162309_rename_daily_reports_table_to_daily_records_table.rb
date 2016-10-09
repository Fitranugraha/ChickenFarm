class RenameDailyrecordsTableToDailyRecordsTable < ActiveRecord::Migration[5.0]
  def change
    rename_table :daily_records, :daily_records
  end
end
