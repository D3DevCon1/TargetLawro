require 'test_helper'

class GameweeksControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Gameweek.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Gameweek.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Gameweek.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to gameweek_url(assigns(:gameweek))
  end

  def test_edit
    get :edit, :id => Gameweek.first
    assert_template 'edit'
  end

  def test_update_invalid
    Gameweek.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Gameweek.first
    assert_template 'edit'
  end

  def test_update_valid
    Gameweek.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Gameweek.first
    assert_redirected_to gameweek_url(assigns(:gameweek))
  end

  def test_destroy
    gameweek = Gameweek.first
    delete :destroy, :id => gameweek
    assert_redirected_to gameweeks_url
    assert !Gameweek.exists?(gameweek.id)
  end
end
