json.array!(@gears) do |gear|
  json.extract! gear, :id, :name, :part, :gear_power_id, :price, :salable, :bland_id
  json.url gear_url(gear, format: :json)
end
