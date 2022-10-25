class BooksController < ApplicationController
  # before_action :set_author
  # before_action :set_book, only: %i[show edit update destroy]
  
  def index
    if params[:author_id]
      @allbooks = Author.find_by_id(params[:author_id]).books
    else
      @allbooks = Book.all
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @a_id = params[:author_id]
    @book = Book.new
  end

  def create
     @book = Book.new(book_params)
     if @book.save
       redirect_to (books_path)
     else
       # render('new')  
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
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  #private methods
  private

  def set_author
    @author = Author.find(params[:author_id])
  end
  def set_book
    @book = Book.find(params[:id])
  end
  def book_params
    params.require(:book).permit(:title,:author_id,:published_at)
  end

end
