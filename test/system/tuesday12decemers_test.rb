require "application_system_test_case"

class Tuesday12decemersTest < ApplicationSystemTestCase
  setup do
    @tuesday12decemer = tuesday12decemers(:one)
  end

  test "visiting the index" do
    visit tuesday12decemers_url
    assert_selector "h1", text: "Tuesday12decemers"
  end

  test "should create tuesday12decemer" do
    visit tuesday12decemers_url
    click_on "New tuesday12decemer"

    fill_in "Address", with: @tuesday12decemer.address
    fill_in "Description", with: @tuesday12decemer.description
    fill_in "Email", with: @tuesday12decemer.email
    fill_in "Name", with: @tuesday12decemer.name
    check "Personaldata" if @tuesday12decemer.personaldata
    fill_in "Phone", with: @tuesday12decemer.phone
    click_on "Create Tuesday12decemer"

    assert_text "Tuesday12decemer was successfully created"
    click_on "Back"
  end

  test "should update Tuesday12decemer" do
    visit tuesday12decemer_url(@tuesday12decemer)
    click_on "Edit this tuesday12decemer", match: :first

    fill_in "Address", with: @tuesday12decemer.address
    fill_in "Description", with: @tuesday12decemer.description
    fill_in "Email", with: @tuesday12decemer.email
    fill_in "Name", with: @tuesday12decemer.name
    check "Personaldata" if @tuesday12decemer.personaldata
    fill_in "Phone", with: @tuesday12decemer.phone
    click_on "Update Tuesday12decemer"

    assert_text "Tuesday12decemer was successfully updated"
    click_on "Back"
  end

  test "should destroy Tuesday12decemer" do
    visit tuesday12decemer_url(@tuesday12decemer)
    click_on "Destroy this tuesday12decemer", match: :first

    assert_text "Tuesday12decemer was successfully destroyed"
  end
end
