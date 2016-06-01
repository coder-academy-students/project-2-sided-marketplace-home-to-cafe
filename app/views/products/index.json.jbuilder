json.array!(@products) do |product|
  json.extract! product, :id, :user_id, :cake_type, :description, :time_to_bake
  json.url product_url(product, format: :json)
end
