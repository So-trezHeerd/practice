require "application_system_test_case"

class UserLikesTest < ApplicationSystemTestCase
  setup do
    @user_like = user_likes(:one)
  end

  test "visiting the index" do
    visit user_likes_url
    assert_selector "h1", text: "User Likes"
  end

  test "creating a User like" do
    visit user_likes_url
    click_on "New User Like"

    fill_in "Id", with: @user_like.id_id
    fill_in "Product", with: @user_like.product
    fill_in "User", with: @user_like.user
    click_on "Create User like"

    assert_text "User like was successfully created"
    click_on "Back"
  end

  test "updating a User like" do
    visit user_likes_url
    click_on "Edit", match: :first

    fill_in "Id", with: @user_like.id_id
    fill_in "Product", with: @user_like.product
    fill_in "User", with: @user_like.user
    click_on "Update User like"

    assert_text "User like was successfully updated"
    click_on "Back"
  end

  test "destroying a User like" do
    visit user_likes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User like was successfully destroyed"
  end
end
