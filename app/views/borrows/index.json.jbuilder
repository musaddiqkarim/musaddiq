json.array!(@borrows) do |borrow|
  json.extract! borrow, :id, :bmemeber, :bbook, :bfine, :book_id, :member_id, :fine_id
  json.url borrow_url(borrow, format: :json)
end
