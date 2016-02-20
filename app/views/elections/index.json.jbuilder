json.array!(@elections) do |election|
  json.extract! election, :id, :title, :description, :contact
  json.url election_url(election, format: :json)
end
