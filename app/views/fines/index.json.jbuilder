json.array!(@fines) do |fine|
  json.extract! fine, :id, :idate, :rdate, :charges
  json.url fine_url(fine, format: :json)
end
