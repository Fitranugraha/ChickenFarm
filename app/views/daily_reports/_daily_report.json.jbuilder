json.extract! daily_report, :id, :report_date, :age, :remedy, :feed_recieved, :feed_actual, :feed_remains, :average_weight, :mortality, :average_temperature, :average_hummidity, :stockman, :notes, :periode_id, :created_at, :updated_at
json.url daily_report_url(daily_report, format: :json)