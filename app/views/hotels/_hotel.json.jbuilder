json.extract! hotel, :id, :name, :location, :price, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)
