class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show edit update destroy ]

  # GET /articles or /articles.json
  def index
    articles = Article.all
    render json: articles
  end


  # GET /articles/1 or /articles/1.json
  def show
    article = Article.find(params[:id])
    render json: article
  end

  # GET /articles/new
  # def new
  #   @article = Article.new
  # end

  # GET /articles/1/edit
  # def edit
  # end

  # POST /articles or /articles.json
  def create
      article = Article.new(article_params)
  
      if article.save
        render json: article, status: :created
      else
        render json: article.errors, status: :unprocessable_entity
      end
  
  end

  # PATCH/PUT /articles/1 or /articles/1.json
  def update
    article = Article.find(params[:id])

    if article.update(article_params)
      render json: article
    else
      render json: article.errors, status: :unprocessable_entity
    end
  end

  # DELETE /articles/1 or /articles/1.json
  def destroy
    article = Article.find(params[:id])
    article.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_article
    #   @article = Article.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:title, :content, :author, :category, :published_at)
    end
end
