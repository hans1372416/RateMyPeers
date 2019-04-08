json.extract! word_response, :id, :created_at, :updated_at
json.url word_response_url(word_response, format: :json)
