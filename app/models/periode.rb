class Periode < ApplicationRecord
  belongs_to :henhouse
  has_many :daily_records
  accepts_nested_attributes_for  :daily_records, allow_destroy: true
end
