json.array!(@evaluations) do |evaluation|
  json.extract! evaluation, :id, :group_id, :rater_id, :ratee_id, :attempt
  json.url evaluation_url(evaluation, format: :json)
end
