json.extract! chat, :id, :title, :body, :username, :created_at, :updated_at
json.url chat_url(chat, format: :json)
