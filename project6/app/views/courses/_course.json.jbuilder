json.extract! course, :id, :instructor, :class_id, :created_at, :updated_at
json.url course_url(course, format: :json)
