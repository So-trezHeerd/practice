require "application_system_test_case"

class FundingProductsTest < ApplicationSystemTestCase
  setup do
    @funding_product = funding_products(:one)
  end

  test "visiting the index" do
    visit funding_products_url
    assert_selector "h1", text: "Funding Products"
  end

  test "creating a Funding product" do
    visit funding_products_url
    click_on "New Funding Product"

    fill_in "Achieve money", with: @funding_product.achieve_money
    fill_in "Achieve rate", with: @funding_product.achieve_rate
    fill_in "Brand", with: @funding_product.brand
    fill_in "Category", with: @funding_product.category_id
    fill_in "Deadline", with: @funding_product.deadline
    fill_in "Product detail", with: @funding_product.product_detail
    fill_in "Product", with: @funding_product.product_id
    fill_in "Seller", with: @funding_product.seller_id
    fill_in "Supporters number", with: @funding_product.supporters_number
    fill_in "Title", with: @funding_product.title
    click_on "Create Funding product"

    assert_text "Funding product was successfully created"
    click_on "Back"
  end

  test "updating a Funding product" do
    visit funding_products_url
    click_on "Edit", match: :first

    fill_in "Achieve money", with: @funding_product.achieve_money
    fill_in "Achieve rate", with: @funding_product.achieve_rate
    fill_in "Brand", with: @funding_product.brand
    fill_in "Category", with: @funding_product.category_id
    fill_in "Deadline", with: @funding_product.deadline
    fill_in "Product detail", with: @funding_product.product_detail
    fill_in "Product", with: @funding_product.product_id
    fill_in "Seller", with: @funding_product.seller_id
    fill_in "Supporters number", with: @funding_product.supporters_number
    fill_in "Title", with: @funding_product.title
    click_on "Update Funding product"

    assert_text "Funding product was successfully updated"
    click_on "Back"
  end

  test "destroying a Funding product" do
    visit funding_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Funding product was successfully destroyed"
  end
end
