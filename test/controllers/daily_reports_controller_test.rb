require 'test_helper'

class DailyrecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_record = daily_records(:one)
  end

  test "should get index" do
    get daily_records_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_record_url
    assert_response :success
  end

  test "should create daily_record" do
    assert_difference('Dailyrecord.count') do
      post daily_records_url, params: { daily_record: { age: @daily_record.age, average_hummidity: @daily_record.average_hummidity, average_temperature: @daily_record.average_temperature, average_weight: @daily_record.average_weight, feed_actual: @daily_record.feed_actual, feed_recieved: @daily_record.feed_recieved, feed_remains: @daily_record.feed_remains, mortality: @daily_record.mortality, notes: @daily_record.notes, periode_id: @daily_record.periode_id, remedy: @daily_record.remedy, record_date: @daily_record.record_date, stockman: @daily_record.stockman } }
    end

    assert_redirected_to daily_record_url(Dailyrecord.last)
  end

  test "should show daily_record" do
    get daily_record_url(@daily_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_record_url(@daily_record)
    assert_response :success
  end

  test "should update daily_record" do
    patch daily_record_url(@daily_record), params: { daily_record: { age: @daily_record.age, average_hummidity: @daily_record.average_hummidity, average_temperature: @daily_record.average_temperature, average_weight: @daily_record.average_weight, feed_actual: @daily_record.feed_actual, feed_recieved: @daily_record.feed_recieved, feed_remains: @daily_record.feed_remains, mortality: @daily_record.mortality, notes: @daily_record.notes, periode_id: @daily_record.periode_id, remedy: @daily_record.remedy, record_date: @daily_record.record_date, stockman: @daily_record.stockman } }
    assert_redirected_to daily_record_url(@daily_record)
  end

  test "should destroy daily_record" do
    assert_difference('Dailyrecord.count', -1) do
      delete daily_record_url(@daily_record)
    end

    assert_redirected_to daily_records_url
  end
end
