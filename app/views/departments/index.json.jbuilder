json.array!(@departments) do |department|
  json.extract! department, :id, :department
  json.url department_url(department, format: :json)
end
