json.array!(@questions) do |question|
  json.extract! question, :id, :question, :limit
  json.url question_url(question, format: :json)
end
