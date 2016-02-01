json.array!(@news_articles) do |news_article|
  json.extract! news_article, :id, :title, :description, :body, :imageUrl, :moreInfoUrl
  json.url news_article_url(news_article, format: :json)
end
