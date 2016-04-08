json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :guest_name, :host_name, :from, :until, :user_id, :listing_id
  json.url reservation_url(reservation, format: :json)
end
