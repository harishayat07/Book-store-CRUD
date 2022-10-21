class BooksController < ApplicationController
  def index
    @allbooks = Book.all
  end
  def new
    
  end
  def create

  end

  def show
    @book = Book.find(params[:id])
  end
  def edit
  
  end
  def update 

  end
  def delete

  end
  def destroy
    
  end
end
