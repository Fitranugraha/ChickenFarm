module StatisticHelper
  
  def daily_record_by_date
    line_chart @daily_records.group_by_day(:record_date, format: "%B %d, %Y").maximum(:average_weight)
    
  end
  
  def daily_record_by_stockman
    line_chart Dailyrecord.group(:stockman).count, library: {
      title: {text: 'Sporters by age', x: -20},
      yAxis: {
         allowDecimals: false,
         title: {
             text: 'Ages count'
         }
      },
      xAxis: {
         title: {
             text: 'Age'
         }
      }
    }
  end
  
end

