json.array!(@books) do |book|
  json.extract! book, :id, :bookid, :title, :edition, :auther, :publisher
  json.url book_url(book, format: :json)
end
