require 'test_helper'

class HomeBakerProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home_baker_profile = home_baker_profiles(:one)
  end

  test "should get index" do
    get home_baker_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_home_baker_profile_url
    assert_response :success
  end

  test "should create home_baker_profile" do
    assert_difference('HomeBakerProfile.count') do
      post home_baker_profiles_url, params: { home_baker_profile: { address: @home_baker_profile.address, latitude: @home_baker_profile.latitude, logo_url: @home_baker_profile.logo_url, longitude: @home_baker_profile.longitude, name: @home_baker_profile.name, phone_number: @home_baker_profile.phone_number, user_id: @home_baker_profile.user_id } }
    end

    assert_redirected_to home_baker_profile_path(HomeBakerProfile.last)
  end

  test "should show home_baker_profile" do
    get home_baker_profile_url(@home_baker_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_home_baker_profile_url(@home_baker_profile)
    assert_response :success
  end

  test "should update home_baker_profile" do
    patch home_baker_profile_url(@home_baker_profile), params: { home_baker_profile: { address: @home_baker_profile.address, latitude: @home_baker_profile.latitude, logo_url: @home_baker_profile.logo_url, longitude: @home_baker_profile.longitude, name: @home_baker_profile.name, phone_number: @home_baker_profile.phone_number, user_id: @home_baker_profile.user_id } }
    assert_redirected_to home_baker_profile_path(@home_baker_profile)
  end

  test "should destroy home_baker_profile" do
    assert_difference('HomeBakerProfile.count', -1) do
      delete home_baker_profile_url(@home_baker_profile)
    end

    assert_redirected_to home_baker_profiles_path
  end
end
