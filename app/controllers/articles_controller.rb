class ArticlesController < ApplicationController
  #get /artiles
  def index
    @articles = Article.all
  end
  #get /articles/:id
  def show
    @articles = Article.find(params[:id])
  end
  #get /articles/new
  def new
    @articles = Article.new
  end
  #post /articles
  def create
    @articles = Article.new(title: params[:artilce][:title],
                            body: params[:artilce][:body])
  end
end