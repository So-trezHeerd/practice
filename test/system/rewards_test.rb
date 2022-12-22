require "application_system_test_case"

class RewardsTest < ApplicationSystemTestCase
  setup do
    @reward = rewards(:one)
  end

  test "visiting the index" do
    visit rewards_url
    assert_selector "h1", text: "Rewards"
  end

  test "creating a Reward" do
    visit rewards_url
    click_on "New Reward"

    fill_in "Order", with: @reward.order_id
    fill_in "Product id", with: @reward.product_id_id
    fill_in "Reward content", with: @reward.reward_content
    fill_in "Reward", with: @reward.reward_id
    fill_in "Reward name", with: @reward.reward_name
    fill_in "Reward price", with: @reward.reward_price
    click_on "Create Reward"

    assert_text "Reward was successfully created"
    click_on "Back"
  end

  test "updating a Reward" do
    visit rewards_url
    click_on "Edit", match: :first

    fill_in "Order", with: @reward.order_id
    fill_in "Product id", with: @reward.product_id_id
    fill_in "Reward content", with: @reward.reward_content
    fill_in "Reward", with: @reward.reward_id
    fill_in "Reward name", with: @reward.reward_name
    fill_in "Reward price", with: @reward.reward_price
    click_on "Update Reward"

    assert_text "Reward was successfully updated"
    click_on "Back"
  end

  test "destroying a Reward" do
    visit rewards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reward was successfully destroyed"
  end
end
