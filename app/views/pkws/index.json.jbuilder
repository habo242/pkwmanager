json.array!(@cars) do |car|
  json.extract! car, :id, :marque, :model, :milage, :MOT
  json.url car_url(car, format: :json)
end
