class ArticlesController < ApplicationController
  
  def index
    #@@articles = Article.all
    @articles = Article.all
    #articles = Article.all
  end
  
end
