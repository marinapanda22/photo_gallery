json.extract! notice, :id, :user_id, :gallery_id, :body, :mark, :created_at, :updated_at
json.url notice_url(notice, format: :json)
