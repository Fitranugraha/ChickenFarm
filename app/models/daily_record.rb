class DailyRecord < ApplicationRecord
  belongs_to :periode
  
  def calculate_age
    #temukan tanggal DO masuk
    #1 Temukan DailyRecord ini berasosiasi dengan Periode Apa.
    @periode = self.periode
    @age_day = (self.report_date - @periode.start_date).to_i + 1
  end
end
