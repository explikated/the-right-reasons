json.array!(@contestants) do |contestant|
  json.extract! contestant, :id, :name, :age, :occupation
  json.url contestant_url(contestant, format: :json)
end
