json.array!(@manufactors) do |manufactor|
  json.extract! manufactor, :id, :manufactor
  json.url manufactor_url(manufactor, format: :json)
end
