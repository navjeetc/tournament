require 'test_helper'

class ContestsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Contest.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Contest.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to contests_url
  end
end
