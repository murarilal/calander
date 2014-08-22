class ArticlesController < ApplicationController
  def index
    if params[:search]
      @articles = Article.search(params[:search]).paginate(:page => params[:page], :per_page => 5)
    else
       @articles = Article.all.paginate(:page => params[:page], :per_page => 5) 
    end   
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      redirect_to @article, notice: "Created article."
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(params[:article])
      redirect_to @article, notice: "Updated article."
    else
      render :edit
    end
  end
end
