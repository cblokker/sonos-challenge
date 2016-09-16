require 'test_helper'

class MusicServicesControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  setup do
    sign_in users(:test_user)
    @music_service = users(:test_user).music_services.first
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:music_services)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create music_service' do
    assert_difference('MusicService.count') do
      post :create, music_service: { endpoint: @music_service.endpoint, name: @music_service.name }
    end

    assert_redirected_to music_service_path(assigns(:music_service))
    assert_not_nil flash
  end

  test 'should not create music_service' do
    assert_difference('MusicService.count', 0) do
      post :create, music_service: { name: @music_service.name }
    end

    assert_template :new
    assert_not_nil flash
  end

  test 'should show music_service' do
    get :show, id: @music_service
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @music_service
    assert_response :success
  end

  test 'should update music_service' do
    patch :update, id: @music_service, music_service: { endpoint: @music_service.endpoint, name: @music_service.name }
    assert_redirected_to music_service_path(assigns(:music_service))
  end

  test 'should not update music_service' do
    patch :update, id: @music_service, music_service: { name: nil }

    assert_template :edit
    assert_not_nil flash
  end

  test 'should destroy music_service' do
    assert_difference('MusicService.count', -1) do
      delete :destroy, id: @music_service
    end

    assert_redirected_to music_services_path
  end
end
