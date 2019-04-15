require "application_system_test_case"

class ScoreboardsTest < ApplicationSystemTestCase
  setup do
    @scoreboard = scoreboards(:one)
  end

  test "visiting the index" do
    visit scoreboards_url
    assert_selector "h1", text: "Scoreboards"
  end

  test "creating a Scoreboard" do
    visit scoreboards_url
    click_on "New Scoreboard"

    fill_in "Comment", with: @scoreboard.comment
    fill_in "Score", with: @scoreboard.score
    fill_in "User", with: @scoreboard.user_id
    click_on "Create Scoreboard"

    assert_text "Scoreboard was successfully created"
    click_on "Back"
  end

  test "updating a Scoreboard" do
    visit scoreboards_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @scoreboard.comment
    fill_in "Score", with: @scoreboard.score
    fill_in "User", with: @scoreboard.user_id
    click_on "Update Scoreboard"

    assert_text "Scoreboard was successfully updated"
    click_on "Back"
  end

  test "destroying a Scoreboard" do
    visit scoreboards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scoreboard was successfully destroyed"
  end
end
