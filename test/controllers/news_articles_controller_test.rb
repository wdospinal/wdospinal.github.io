require 'test_helper'

class NewsArticlesControllerTest < ActionController::TestCase
  setup do
    @news_article = news_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:news_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create news_article" do
    assert_difference('NewsArticle.count') do
      post :create, news_article: { body: @news_article.body, description: @news_article.description, imageUrl: @news_article.imageUrl, moreInfoUrl: @news_article.moreInfoUrl, title: @news_article.title }
    end

    assert_redirected_to news_article_path(assigns(:news_article))
  end

  test "should show news_article" do
    get :show, id: @news_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @news_article
    assert_response :success
  end

  test "should update news_article" do
    patch :update, id: @news_article, news_article: { body: @news_article.body, description: @news_article.description, imageUrl: @news_article.imageUrl, moreInfoUrl: @news_article.moreInfoUrl, title: @news_article.title }
    assert_redirected_to news_article_path(assigns(:news_article))
  end

  test "should destroy news_article" do
    assert_difference('NewsArticle.count', -1) do
      delete :destroy, id: @news_article
    end

    assert_redirected_to news_articles_path
  end
end
