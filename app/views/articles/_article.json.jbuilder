json.extract! article, :id, :title, :content, :author, :category, :published_at, :created_at, :updated_at
json.url article_url(article, format: :json)
