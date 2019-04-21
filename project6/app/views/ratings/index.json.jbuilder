    
json.array!(@ratings) do |rating|
  json.extract! rating, :id, :user_id, :ratee_id, :group_id, :score, :comments, :created_at, :updated_at
  json.url rating_url(rating, format: :json)
end
