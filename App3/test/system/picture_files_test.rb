require "application_system_test_case"

class PictureFilesTest < ApplicationSystemTestCase
  setup do
    @picture_file = picture_files(:one)
  end

  test "visiting the index" do
    visit picture_files_url
    assert_selector "h1", text: "Picture Files"
  end

  test "creating a Picture file" do
    visit picture_files_url
    click_on "New Picture File"

    click_on "Create Picture file"

    assert_text "Picture file was successfully created"
    click_on "Back"
  end

  test "updating a Picture file" do
    visit picture_files_url
    click_on "Edit", match: :first

    click_on "Update Picture file"

    assert_text "Picture file was successfully updated"
    click_on "Back"
  end

  test "destroying a Picture file" do
    visit picture_files_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Picture file was successfully destroyed"
  end
end
