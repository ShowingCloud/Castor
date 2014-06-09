json.array!(@user_verifications) do |user_verification|
  json.extract! user_verification, :id, :name, :birthday, :is_intern, :mobile, :gender, :email, :department, :position, :area, :subjection, :tel, :fax, :im, :id_card, :adress, :postcode
  json.url user_verification_url(user_verification, format: :json)
end
