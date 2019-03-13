require "application_system_test_case"

class VanuesTest < ApplicationSystemTestCase
  setup do
    @vanue = vanues(:one)
  end

  test "visiting the index" do
    visit vanues_url
    assert_selector "h1", text: "Vanues"
  end

  test "creating a Vanue" do
    visit vanues_url
    click_on "New Vanue"

    fill_in "Address", with: @vanue.address
    fill_in "Area", with: @vanue.area
    fill_in "City", with: @vanue.city
    fill_in "Description", with: @vanue.description
    fill_in "Guest Capacity", with: @vanue.guest_capacity
    fill_in "Latitude", with: @vanue.latitude
    fill_in "Longitude", with: @vanue.longitude
    fill_in "Name", with: @vanue.name
    fill_in "Prize", with: @vanue.prize
    fill_in "State", with: @vanue.state
    click_on "Create Vanue"

    assert_text "Vanue was successfully created"
    click_on "Back"
  end

  test "updating a Vanue" do
    visit vanues_url
    click_on "Edit", match: :first

    fill_in "Address", with: @vanue.address
    fill_in "Area", with: @vanue.area
    fill_in "City", with: @vanue.city
    fill_in "Description", with: @vanue.description
    fill_in "Guest Capacity", with: @vanue.guest_capacity
    fill_in "Latitude", with: @vanue.latitude
    fill_in "Longitude", with: @vanue.longitude
    fill_in "Name", with: @vanue.name
    fill_in "Prize", with: @vanue.prize
    fill_in "State", with: @vanue.state
    click_on "Update Vanue"

    assert_text "Vanue was successfully updated"
    click_on "Back"
  end

  test "destroying a Vanue" do
    visit vanues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vanue was successfully destroyed"
  end
end
