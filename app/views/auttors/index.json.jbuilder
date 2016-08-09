json.array!(@auttors) do |auttor|
  json.extract! auttor, :id, :authorid, :authorname
  json.url auttor_url(auttor, format: :json)
end
