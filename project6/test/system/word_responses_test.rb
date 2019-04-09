require "application_system_test_case"

class WordResponsesTest < ApplicationSystemTestCase
  setup do
    @word_response = word_responses(:one)
  end

  test "visiting the index" do
    visit word_responses_url
    assert_selector "h1", text: "Word Responses"
  end

  test "creating a Word response" do
    visit word_responses_url
    click_on "New Word Response"

    click_on "Create Word response"

    assert_text "Word response was successfully created"
    click_on "Back"
  end

  test "updating a Word response" do
    visit word_responses_url
    click_on "Edit", match: :first

    click_on "Update Word response"

    assert_text "Word response was successfully updated"
    click_on "Back"
  end

  test "destroying a Word response" do
    visit word_responses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Word response was successfully destroyed"
  end
end
