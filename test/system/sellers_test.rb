require "application_system_test_case"

class SellersTest < ApplicationSystemTestCase
  setup do
    @seller = sellers(:one)
  end

  test "visiting the index" do
    visit sellers_url
    assert_selector "h1", text: "Sellers"
  end

  test "creating a Seller" do
    visit sellers_url
    click_on "New Seller"

    fill_in "Ceo email", with: @seller.ceo_email
    fill_in "Ceo name", with: @seller.ceo_name
    fill_in "Ceo num", with: @seller.ceo_num
    fill_in "Company address", with: @seller.company_address
    fill_in "Company name", with: @seller.company_name
    fill_in "Registration num", with: @seller.registration_num
    fill_in "Seller", with: @seller.seller_id
    fill_in "User", with: @seller.user_id
    click_on "Create Seller"

    assert_text "Seller was successfully created"
    click_on "Back"
  end

  test "updating a Seller" do
    visit sellers_url
    click_on "Edit", match: :first

    fill_in "Ceo email", with: @seller.ceo_email
    fill_in "Ceo name", with: @seller.ceo_name
    fill_in "Ceo num", with: @seller.ceo_num
    fill_in "Company address", with: @seller.company_address
    fill_in "Company name", with: @seller.company_name
    fill_in "Registration num", with: @seller.registration_num
    fill_in "Seller", with: @seller.seller_id
    fill_in "User", with: @seller.user_id
    click_on "Update Seller"

    assert_text "Seller was successfully updated"
    click_on "Back"
  end

  test "destroying a Seller" do
    visit sellers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Seller was successfully destroyed"
  end
end
