require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
include Devise::Test::IntegrationHelpers

setup do 
@article = articles(:one)
@user = users(:one)
sign_in @user
end

  test "should get index" do
    get articles_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
    assert_select 'h1', "Contact Us"
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
  end

end
