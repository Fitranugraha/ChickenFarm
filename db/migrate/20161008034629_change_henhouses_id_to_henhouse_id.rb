class ChangeHenhousesIdToHenhouseId < ActiveRecord::Migration[5.0]
  def self.up
    rename_column :periodes, :henhouses_id, :henhouse_id
  end

  def self.down
     rename_column :periodes, :henhouse_id, :henhouses_id
  end
end
