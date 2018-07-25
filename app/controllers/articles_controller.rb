class ArticlesController < ApplicationController
  #get /artiles
  def index
    @articles = Article.all
  end

  #get /articles/:id
  def show
    @article = Article.find(params[:id])
    Article.where.not("id = ?", params[:id])
  end

  #get /articles/new
  def new
    @article = Article.new
  end

  #post /articles
  def create
    @article = Article.new(title: params[:article][:title],
                            body: params[:article][:body])

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  #get /articles/:id/uptade
  def update

  end

  #
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    @article.destroy
    redirect_to articles_path
  end

end