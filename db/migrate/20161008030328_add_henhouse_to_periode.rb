class AddHenhouseToPeriode < ActiveRecord::Migration[5.0]
  def change
    add_reference :periodes, :henhouses, foreign_key: true
  end
end
