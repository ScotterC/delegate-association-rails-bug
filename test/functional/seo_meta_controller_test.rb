require 'test_helper'

class SeoMetaControllerTest < ActionController::TestCase
  setup do
    @seo_metum = seo_meta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seo_meta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seo_metum" do
    assert_difference('SeoMetum.count') do
      post :create, :seo_metum => { :browser_title => @seo_metum.browser_title, :meta_author => @seo_metum.meta_author, :meta_description => @seo_metum.meta_description, :meta_keywords => @seo_metum.meta_keywords }
    end

    assert_redirected_to seo_metum_path(assigns(:seo_metum))
  end

  test "should show seo_metum" do
    get :show, :id => @seo_metum
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @seo_metum
    assert_response :success
  end

  test "should update seo_metum" do
    put :update, :id => @seo_metum, :seo_metum => { :browser_title => @seo_metum.browser_title, :meta_author => @seo_metum.meta_author, :meta_description => @seo_metum.meta_description, :meta_keywords => @seo_metum.meta_keywords }
    assert_redirected_to seo_metum_path(assigns(:seo_metum))
  end

  test "should destroy seo_metum" do
    assert_difference('SeoMetum.count', -1) do
      delete :destroy, :id => @seo_metum
    end

    assert_redirected_to seo_meta_path
  end
end
