require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    #here the test uses assertion
    assert_response :success #success is an abstract representation of the underlying http status code 
    #it ensures that we are recieving a success status code in response to the get request on our home action on line 5
    assert_select "title", "Home | Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
  	get :about 
  	assert_response :success
  	assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end 

end
