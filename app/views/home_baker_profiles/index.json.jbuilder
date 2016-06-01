json.array!(@home_baker_profiles) do |home_baker_profile|
  json.extract! home_baker_profile, :id, :user_id, :logo_url, :name, :address, :phone_number, :latitude, :longitude
  json.url home_baker_profile_url(home_baker_profile, format: :json)
end
