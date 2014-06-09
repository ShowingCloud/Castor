json.array!(@tels) do |tel|
  json.extract! tel, :id, :tel
  json.url tel_url(tel, format: :json)
end
