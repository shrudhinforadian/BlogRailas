require "application_system_test_case"

class UserisTest < ApplicationSystemTestCase
  setup do
    @useri = useris(:one)
  end

  test "visiting the index" do
    visit useris_url
    assert_selector "h1", text: "Useris"
  end

  test "creating a Useri" do
    visit useris_url
    click_on "New Useri"

    fill_in "Email", with: @useri.email
    fill_in "Login", with: @useri.login
    fill_in "Name", with: @useri.name
    click_on "Create Useri"

    assert_text "Useri was successfully created"
    click_on "Back"
  end

  test "updating a Useri" do
    visit useris_url
    click_on "Edit", match: :first

    fill_in "Email", with: @useri.email
    fill_in "Login", with: @useri.login
    fill_in "Name", with: @useri.name
    click_on "Update Useri"

    assert_text "Useri was successfully updated"
    click_on "Back"
  end

  test "destroying a Useri" do
    visit useris_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Useri was successfully destroyed"
  end
end
