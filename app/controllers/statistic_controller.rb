class StatisticController < ApplicationController
  def index
    @daily_records = Dailyrecord.all
  end
end
