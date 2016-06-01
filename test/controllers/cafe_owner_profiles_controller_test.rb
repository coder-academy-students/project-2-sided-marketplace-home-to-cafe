require 'test_helper'

class CafeOwnerProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cafe_owner_profile = cafe_owner_profiles(:one)
  end

  test "should get index" do
    get cafe_owner_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_cafe_owner_profile_url
    assert_response :success
  end

  test "should create cafe_owner_profile" do
    assert_difference('CafeOwnerProfile.count') do
      post cafe_owner_profiles_url, params: { cafe_owner_profile: { address: @cafe_owner_profile.address, latitude: @cafe_owner_profile.latitude, logo_url: @cafe_owner_profile.logo_url, longitude: @cafe_owner_profile.longitude, name: @cafe_owner_profile.name, phone_number: @cafe_owner_profile.phone_number, user_id: @cafe_owner_profile.user_id } }
    end

    assert_redirected_to cafe_owner_profile_path(CafeOwnerProfile.last)
  end

  test "should show cafe_owner_profile" do
    get cafe_owner_profile_url(@cafe_owner_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_cafe_owner_profile_url(@cafe_owner_profile)
    assert_response :success
  end

  test "should update cafe_owner_profile" do
    patch cafe_owner_profile_url(@cafe_owner_profile), params: { cafe_owner_profile: { address: @cafe_owner_profile.address, latitude: @cafe_owner_profile.latitude, logo_url: @cafe_owner_profile.logo_url, longitude: @cafe_owner_profile.longitude, name: @cafe_owner_profile.name, phone_number: @cafe_owner_profile.phone_number, user_id: @cafe_owner_profile.user_id } }
    assert_redirected_to cafe_owner_profile_path(@cafe_owner_profile)
  end

  test "should destroy cafe_owner_profile" do
    assert_difference('CafeOwnerProfile.count', -1) do
      delete cafe_owner_profile_url(@cafe_owner_profile)
    end

    assert_redirected_to cafe_owner_profiles_path
  end
end
