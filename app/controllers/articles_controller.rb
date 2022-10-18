class ArticlesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to articles_path, notice: "Article successfully created."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to articles_path, notice: "Article successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path, notice: "Article successfully destroyed."
  end

  private

  def set_quote
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:quote).permit(:name)
  end

end
