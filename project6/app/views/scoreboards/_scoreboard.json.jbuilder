json.extract! scoreboard, :id, :user_id, :score, :comment, :created_at, :updated_at
json.url scoreboard_url(scoreboard, format: :json)
