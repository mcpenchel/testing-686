require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url
    assert_selector "h1", text: "Awesome Products"
    assert_selector ".card-product", count: Product.count
  end

  test "lets a signed in user create a new product" do
    # save_and_open_screenshot
    #
    # Use the above command to take a screenshot of the browser and to open
    # the image right after that, in case you need to debug your tests.

    # 1) Sign in and visit form
    login_as users(:george)
    visit "/products/new"

    # 2) Fill the inputs
    fill_in "product_name", with: "Le Wagon"
    fill_in "product_tagline", with: "Change your life: Learn to code"

    # 3) Click on the submit button
    click_on 'Create Product'

    # 4) Check that the user is redirected back to the homepage and that the
    # new product is listed there.
    assert_equal root_path, page.current_path
    assert_text "Change your life: Learn to code"
  end
end
