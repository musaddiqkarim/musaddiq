json.array!(@controllers) do |controller|
  json.extract! controller, :id, :AcountActivation
  json.url controller_url(controller, format: :json)
end
