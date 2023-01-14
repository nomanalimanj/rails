require 'test_helper'

class PictureFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @picture_file = picture_files(:one)
  end

  test "should get index" do
    get picture_files_url
    assert_response :success
  end

  test "should get new" do
    get new_picture_file_url
    assert_response :success
  end

  test "should create picture_file" do
    assert_difference('PictureFile.count') do
      post picture_files_url, params: { picture_file: {  } }
    end

    assert_redirected_to picture_file_url(PictureFile.last)
  end

  test "should show picture_file" do
    get picture_file_url(@picture_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_picture_file_url(@picture_file)
    assert_response :success
  end

  test "should update picture_file" do
    patch picture_file_url(@picture_file), params: { picture_file: {  } }
    assert_redirected_to picture_file_url(@picture_file)
  end

  test "should destroy picture_file" do
    assert_difference('PictureFile.count', -1) do
      delete picture_file_url(@picture_file)
    end

    assert_redirected_to picture_files_url
  end
end
