json.extract! post, :id, :index, :title, :body, :category, :poster, :created_at, :updated_at
json.url post_url(post, format: :json)
