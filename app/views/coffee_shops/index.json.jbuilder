json.array!(@coffee_shops) do |coffee_shop|
  json.extract! coffee_shop, :id, :name, :notes
  json.url coffee_shop_url(coffee_shop, format: :json)
end
