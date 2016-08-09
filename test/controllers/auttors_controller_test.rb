require 'test_helper'

class AuttorsControllerTest < ActionController::TestCase
  setup do
    @auttor = auttors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auttors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auttor" do
    assert_difference('Auttor.count') do
      post :create, auttor: { authorid: @auttor.authorid, authorname: @auttor.authorname }
    end

    assert_redirected_to auttor_path(assigns(:auttor))
  end

  test "should show auttor" do
    get :show, id: @auttor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auttor
    assert_response :success
  end

  test "should update auttor" do
    patch :update, id: @auttor, auttor: { authorid: @auttor.authorid, authorname: @auttor.authorname }
    assert_redirected_to auttor_path(assigns(:auttor))
  end

  test "should destroy auttor" do
    assert_difference('Auttor.count', -1) do
      delete :destroy, id: @auttor
    end

    assert_redirected_to auttors_path
  end
end
