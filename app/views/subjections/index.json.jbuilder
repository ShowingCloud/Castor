json.array!(@subjections) do |subjection|
  json.extract! subjection, :id, :subjection
  json.url subjection_url(subjection, format: :json)
end
