require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
include Devise::Test::IntegrationHelpers

setup do 
@article = articles(:one)
@user = users(:one)
sign_in @user
end
#test to get to correct index page
  test "should get index" do
    get articles_url
    assert_response :success
  end
#testing contact url for pages controller and testing the contact view
  test "should get contact" do
    get pages_contact_url
    assert_response :success
    assert_select 'h1', "Contact Us"
  end
#testing about url for pages controller and testing the about view
  test "should get about" do
    get pages_about_url
    assert_response :success
  end

end
