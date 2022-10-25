class AuthorsController < ApplicationController
  
  def index
    @allauthors = Author.all
  end

  def show
  @author = Author.find(params[:id]) 
  end

  def new
  @author = Author.new
  end


  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to authors_path
    else
      new
    end
  end

  def edit
  end
  def update 
  end
  
  def delete
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    redirect_to authors_path
  end
  
  private

  def author_params
    params.require(:author).permit(:name,:age,:gnder)
  end

end
