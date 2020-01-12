require "application_system_test_case"

class HierarchiesTest < ApplicationSystemTestCase
  setup do
    @hierarchy = hierarchies(:one)
  end

  test "visiting the index" do
    visit hierarchies_url
    assert_selector "h1", text: "Hierarchies"
  end

  test "creating a Hierarchy" do
    visit hierarchies_url
    click_on "New Hierarchy"

    fill_in "Name", with: @hierarchy.name
    click_on "Create Hierarchy"

    assert_text "Hierarchy was successfully created"
    click_on "Back"
  end

  test "updating a Hierarchy" do
    visit hierarchies_url
    click_on "Edit", match: :first

    fill_in "Name", with: @hierarchy.name
    click_on "Update Hierarchy"

    assert_text "Hierarchy was successfully updated"
    click_on "Back"
  end

  test "destroying a Hierarchy" do
    visit hierarchies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hierarchy was successfully destroyed"
  end
end
