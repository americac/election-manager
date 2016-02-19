json.array!(@elections) do |election|
  json.extract! election, :id
  json.url election_url(election, format: :json)
end
