require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
include Devise::Test::IntegrationHelpers
  setup do
    @article = articles(:one)
    @user = users(:one)
    sign_in @user
  end
#test for getting index
  test "should get index" do
    get articles_url
    assert_response :success
  end
#test for getting a new article page
  test "should get new" do
    get new_article_url
    assert_response :success
  end
#test for creating an article
  test "should create article" do
    assert_difference('Article.count') do
      post articles_url, params: { article: { body: @article.body, title: @article.title } }
    end

    assert_redirected_to article_url(Article.last)
  end
#test for showing the article
  test "should show article" do
    get article_url(@article)
    assert_response :success
  end
#test for showing edit page
  test "should get edit" do
    get edit_article_url(@article)
    assert_response :success
  end
#test for updating article page
  test "should update article" do
    patch article_url(@article), params: { article: { body: @article.body, title: @article.title } }
    assert_redirected_to article_url(@article)
  end
#test for deleting an article 
  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete article_url(@article)
    end

    assert_redirected_to articles_url
  end
end
