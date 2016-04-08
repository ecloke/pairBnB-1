json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :gender, :location, :description, :image, :user_id
  json.url profile_url(profile, format: :json)
end
