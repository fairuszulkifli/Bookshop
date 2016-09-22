require 'test_helper'

class BookpublishesControllerTest < ActionController::TestCase
  setup do
    @bookpublish = bookpublishes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookpublishes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bookpublish" do
    assert_difference('Bookpublish.count') do
      post :create, bookpublish: { : @bookpublish., : @bookpublish., book_id: @bookpublish.book_id, publisher: @bookpublish.publisher }
    end

    assert_redirected_to bookpublish_path(assigns(:bookpublish))
  end

  test "should show bookpublish" do
    get :show, id: @bookpublish
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bookpublish
    assert_response :success
  end

  test "should update bookpublish" do
    patch :update, id: @bookpublish, bookpublish: { : @bookpublish., : @bookpublish., book_id: @bookpublish.book_id, publisher: @bookpublish.publisher }
    assert_redirected_to bookpublish_path(assigns(:bookpublish))
  end

  test "should destroy bookpublish" do
    assert_difference('Bookpublish.count', -1) do
      delete :destroy, id: @bookpublish
    end

    assert_redirected_to bookpublishes_path
  end
end
