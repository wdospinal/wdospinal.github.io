class CreateNewsArticles < ActiveRecord::Migration
  def change
    create_table :news_articles do |t|
      t.string :title
      t.string :description
      t.text :body
      t.string :imageUrl
      t.string :moreInfoUrl

      t.timestamps null: false
    end
  end
end
