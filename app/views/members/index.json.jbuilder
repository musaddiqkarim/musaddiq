json.array!(@members) do |member|
  json.extract! member, :id, :memberid, :membername
  json.url member_url(member, format: :json)
end
