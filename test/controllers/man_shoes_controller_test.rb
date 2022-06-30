require "test_helper"

class ManShoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @man_shoe = man_shoes(:one)
  end

  test "should get index" do
    get man_shoes_url
    assert_response :success
  end

  test "should get new" do
    get new_man_shoe_url
    assert_response :success
  end

  test "should create man_shoe" do
    assert_difference("ManShoe.count") do
      post man_shoes_url, params: { man_shoe: { cetegory: @man_shoe.cetegory, color: @man_shoe.color, description: @man_shoe.description, lable: @man_shoe.lable, price: @man_shoe.price, size: @man_shoe.size, title: @man_shoe.title } }
    end

    assert_redirected_to man_shoe_url(ManShoe.last)
  end

  test "should show man_shoe" do
    get man_shoe_url(@man_shoe)
    assert_response :success
  end

  test "should get edit" do
    get edit_man_shoe_url(@man_shoe)
    assert_response :success
  end

  test "should update man_shoe" do
    patch man_shoe_url(@man_shoe), params: { man_shoe: { cetegory: @man_shoe.cetegory, color: @man_shoe.color, description: @man_shoe.description, lable: @man_shoe.lable, price: @man_shoe.price, size: @man_shoe.size, title: @man_shoe.title } }
    assert_redirected_to man_shoe_url(@man_shoe)
  end

  test "should destroy man_shoe" do
    assert_difference("ManShoe.count", -1) do
      delete man_shoe_url(@man_shoe)
    end

    assert_redirected_to man_shoes_url
  end
end
