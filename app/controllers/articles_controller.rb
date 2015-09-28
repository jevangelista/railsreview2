class ArticlesController < ApplicationController
 before_action :logged_in?


  def index
    @articles = Article.all
    render :index
  end

  def new
    @article = Article.new
    render :new
  end

   def create
    article_params = params.require(:article).permit(:title, :content, :user_id)
    @article = Article.create(article_params)

    redirect_to "/articles/#{@article.id}"
  end

 def show
    id = params[:id]
    @article = Article.find(id)
    render :show
  end


  def edit
    id = params[:id]
    @article = Article.find(id)
    render :edit
  end

  
  def update
    article_id = params[:id]
    article = Article.find(article_id)

    # get updated data
    updated_attributes = params.require(:article).permit(:title, :content, :user_id)
    # update the creature
    article.update_attributes(updated_attributes)

    #redirect to show
    redirect_to "/articles/#{article.id}"
end

def destroy
    id = params[:id]
    article = Article.find(id)
    article.destroy
    redirect_to "/articles"
end

end






