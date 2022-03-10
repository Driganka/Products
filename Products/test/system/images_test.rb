require "application_system_test_case"

class ImagesTest < ApplicationSystemTestCase
  setup do
    @image = images(:one)
  end

  test "visiting the index" do
    visit images_url
    assert_selector "h1", text: "Images"
  end

  test "should create image" do
    visit images_url
    click_on "New image"

    fill_in "Icode", with: @image.icode
    fill_in "Iid", with: @image.iid
    fill_in "Iimage", with: @image.iimage
    fill_in "Iname", with: @image.iname
    click_on "Create Image"

    assert_text "Image was successfully created"
    click_on "Back"
  end

  test "should update Image" do
    visit image_url(@image)
    click_on "Edit this image", match: :first

    fill_in "Icode", with: @image.icode
    fill_in "Iid", with: @image.iid
    fill_in "Iimage", with: @image.iimage
    fill_in "Iname", with: @image.iname
    click_on "Update Image"

    assert_text "Image was successfully updated"
    click_on "Back"
  end

  test "should destroy Image" do
    visit image_url(@image)
    click_on "Destroy this image", match: :first

    assert_text "Image was successfully destroyed"
  end
end
