    
json.array!(@ratings) do |rating|
  json.extract! rating, :id, :eval_id, :user_id, :group_id, :score, :comments
  json.url rating_url(rating, format: :json)
end
