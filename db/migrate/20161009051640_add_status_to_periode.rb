class AddStatusToPeriode < ActiveRecord::Migration[5.0]
  def change
    add_column :periodes, :status, :string
  end
end
