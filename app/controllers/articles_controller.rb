class ArticlesController < ApplicationController
  def new
  end

  def create
    @article = Article.new(article_params)

    @article.save
    redirect_to @article
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end

    def show
      #finds the article that we are most interested in
      @article = Article.find(params[:id])
    end
end
