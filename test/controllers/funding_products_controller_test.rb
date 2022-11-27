require 'test_helper'

class FundingProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @funding_product = funding_products(:one)
  end

  test "should get index" do
    get funding_products_url
    assert_response :success
  end

  test "should get new" do
    get new_funding_product_url
    assert_response :success
  end

  test "should create funding_product" do
    assert_difference('FundingProduct.count') do
      post funding_products_url, params: { funding_product: { achieve_money: @funding_product.achieve_money, achieve_rate: @funding_product.achieve_rate, brand: @funding_product.brand, category_id: @funding_product.category_id, deadline: @funding_product.deadline, product_detail: @funding_product.product_detail, product_id: @funding_product.product_id, seller_id: @funding_product.seller_id, supporters_number: @funding_product.supporters_number, title: @funding_product.title } }
    end

    assert_redirected_to funding_product_url(FundingProduct.last)
  end

  test "should show funding_product" do
    get funding_product_url(@funding_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_funding_product_url(@funding_product)
    assert_response :success
  end

  test "should update funding_product" do
    patch funding_product_url(@funding_product), params: { funding_product: { achieve_money: @funding_product.achieve_money, achieve_rate: @funding_product.achieve_rate, brand: @funding_product.brand, category_id: @funding_product.category_id, deadline: @funding_product.deadline, product_detail: @funding_product.product_detail, product_id: @funding_product.product_id, seller_id: @funding_product.seller_id, supporters_number: @funding_product.supporters_number, title: @funding_product.title } }
    assert_redirected_to funding_product_url(@funding_product)
  end

  test "should destroy funding_product" do
    assert_difference('FundingProduct.count', -1) do
      delete funding_product_url(@funding_product)
    end

    assert_redirected_to funding_products_url
  end
end
