json.array!(@cafe_owner_profiles) do |cafe_owner_profile|
  json.extract! cafe_owner_profile, :id, :user_id, :logo_url, :name, :address, :phone_number, :latitude, :longitude
  json.url cafe_owner_profile_url(cafe_owner_profile, format: :json)
end
