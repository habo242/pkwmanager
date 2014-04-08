json.array!(@pkws) do |pkw|
  json.extract! pkw, :id, :marke, :modell, :kilometerstand, :tüv
  json.url pkw_url(pkw, format: :json)
end
