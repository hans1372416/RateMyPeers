    
json.array!(@ratings) do |rating|
  json.extract! rating, :id, :rater_id, :ratee_id, :group_id, :score, :comments
  json.url rating_url(rating, format: :json)
end
