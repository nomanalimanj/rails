json.extract! email, :id, :body, :title, :created_at, :updated_at
json.url email_url(email, format: :json)
