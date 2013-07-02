require 'test_helper'

class GeneralTextsControllerTest < ActionController::TestCase
  setup do
    @general_text = general_texts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:general_texts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create general_text" do
    assert_difference('GeneralText.count') do
      post :create, general_text: { text_name: @general_text.text_name, text_value: @general_text.text_value }
    end

    assert_redirected_to general_text_path(assigns(:general_text))
  end

  test "should show general_text" do
    get :show, id: @general_text
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @general_text
    assert_response :success
  end

  test "should update general_text" do
    put :update, id: @general_text, general_text: { text_name: @general_text.text_name, text_value: @general_text.text_value }
    assert_redirected_to general_text_path(assigns(:general_text))
  end

  test "should destroy general_text" do
    assert_difference('GeneralText.count', -1) do
      delete :destroy, id: @general_text
    end

    assert_redirected_to general_texts_path
  end
end
