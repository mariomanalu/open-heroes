require 'test_helper'
require "application_system_test_case"

class HerosControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | Open Heroes"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Open Heroes"
  end

  test "should get disclaimer" do
    get disclaimer_path
    assert_response :success
    assert_select "title", "Disclaimer | Open Heroes"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Open Heroes"
  end

  test "should save hero when a new hero is added" do
    hero = Book.new
    assert_not_nil hero.save #True if hero is saved properly, false if hero is not saved
  end

  test "log in button should trigger log in page" do
    visit root_path
    click_on "Log In"
    assert_response :success
    assert_redirected_to user_session_path
  end
end
