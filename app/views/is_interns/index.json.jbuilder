json.array!(@is_interns) do |is_intern|
  json.extract! is_intern, :id, :is_intern
  json.url is_intern_url(is_intern, format: :json)
end
