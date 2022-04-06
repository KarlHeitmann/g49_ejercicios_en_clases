require "application_system_test_case"

class BedsTest < ApplicationSystemTestCase
  setup do
    @bed = beds(:one)
  end

  test "visiting the index" do
    visit beds_url
    assert_selector "h1", text: "Beds"
  end

  test "creating a Bed" do
    visit beds_url
    click_on "New Bed"

    fill_in "Numero de cama", with: @bed.numero_de_cama
    fill_in "Tipo", with: @bed.tipo
    click_on "Create Bed"

    assert_text "Bed was successfully created"
    click_on "Back"
  end

  test "updating a Bed" do
    visit beds_url
    click_on "Edit", match: :first

    fill_in "Numero de cama", with: @bed.numero_de_cama
    fill_in "Tipo", with: @bed.tipo
    click_on "Update Bed"

    assert_text "Bed was successfully updated"
    click_on "Back"
  end

  test "destroying a Bed" do
    visit beds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bed was successfully destroyed"
  end
end
