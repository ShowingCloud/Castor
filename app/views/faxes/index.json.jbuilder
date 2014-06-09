json.array!(@faxes) do |fax|
  json.extract! fax, :id, :fax
  json.url fax_url(fax, format: :json)
end
