require "application_system_test_case"

class ManShoesTest < ApplicationSystemTestCase
  setup do
    @man_shoe = man_shoes(:one)
  end

  test "visiting the index" do
    visit man_shoes_url
    assert_selector "h1", text: "Man shoes"
  end

  test "should create man shoe" do
    visit man_shoes_url
    click_on "New man shoe"

    fill_in "Cetegory", with: @man_shoe.cetegory
    fill_in "Color", with: @man_shoe.color
    fill_in "Description", with: @man_shoe.description
    fill_in "Lable", with: @man_shoe.lable
    fill_in "Price", with: @man_shoe.price
    fill_in "Size", with: @man_shoe.size
    fill_in "Title", with: @man_shoe.title
    click_on "Create Man shoe"

    assert_text "Man shoe was successfully created"
    click_on "Back"
  end

  test "should update Man shoe" do
    visit man_shoe_url(@man_shoe)
    click_on "Edit this man shoe", match: :first

    fill_in "Cetegory", with: @man_shoe.cetegory
    fill_in "Color", with: @man_shoe.color
    fill_in "Description", with: @man_shoe.description
    fill_in "Lable", with: @man_shoe.lable
    fill_in "Price", with: @man_shoe.price
    fill_in "Size", with: @man_shoe.size
    fill_in "Title", with: @man_shoe.title
    click_on "Update Man shoe"

    assert_text "Man shoe was successfully updated"
    click_on "Back"
  end

  test "should destroy Man shoe" do
    visit man_shoe_url(@man_shoe)
    click_on "Destroy this man shoe", match: :first

    assert_text "Man shoe was successfully destroyed"
  end
end
