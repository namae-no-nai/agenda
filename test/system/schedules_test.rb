require "application_system_test_case"

class SchedulesTest < ApplicationSystemTestCase
  setup do
    @schedule = schedules(:one)
  end

  test "visiting the index" do
    visit schedules_url
    assert_selector "h1", text: "Schedules"
  end

  test "should create schedule" do
    visit schedules_url
    click_on "New schedule"

    fill_in "Begin time", with: @schedule.begin_time
    fill_in "Description", with: @schedule.description
    fill_in "End time", with: @schedule.end_time
    fill_in "Subject", with: @schedule.subject
    fill_in "User", with: @schedule.user_id
    click_on "Create Schedule"

    assert_text "Schedule was successfully created"
    click_on "Back"
  end

  test "should update Schedule" do
    visit schedule_url(@schedule)
    click_on "Editar agendamento", match: :first

    fill_in "Begin time", with: @schedule.begin_time
    fill_in "Description", with: @schedule.description
    fill_in "End time", with: @schedule.end_time
    fill_in "Subject", with: @schedule.subject
    fill_in "User", with: @schedule.user_id
    click_on "Update Schedule"

    assert_text "Schedule was successfully updated"
    click_on "Back"
  end

  test "should destroy Schedule" do
    visit schedule_url(@schedule)
    click_on "Destroy this schedule", match: :first

    assert_text "Schedule was successfully destroyed"
  end
end
