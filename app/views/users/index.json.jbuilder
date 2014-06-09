json.array!(@users) do |user|
  json.extract! user, :id, :name, :birthday, :is_intern, :mobile, :gender, :email, :department, :position, :area, :subjection, :tel, :fax, :im, :id_card, :adress, :postcode
  json.url user_url(user, format: :json)
end
