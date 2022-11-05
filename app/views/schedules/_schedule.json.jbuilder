json.extract! schedule, :id, :user_id, :begin_time, :end_time, :subject, :description, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
