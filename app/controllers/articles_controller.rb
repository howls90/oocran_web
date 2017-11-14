class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:show,:index]
  before_action :set_article, except: [:index,:new,:create]

  def index
    @articles = Article.all.reverse
    @page = "Articles"
  end
  def new
    @article = Article.new
    @page = "New Article"
  end
  def create
    @article = current_user.articles.new(article_params)
    if @article.save
      redirect_to articles_path
    else
      render :new
    end
    @page = "Create Article"
  end
  def update
    if @article.update(article_params)
      redirect_to article_path
    else
      render :edit
    end
    @page = "Update Article"
  end
  def show
    @page = @article.title
  end
  def destroy
    @article.delete
    redirect_to articles_path
  end

  private
  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title,:body,:cover)
  end
end