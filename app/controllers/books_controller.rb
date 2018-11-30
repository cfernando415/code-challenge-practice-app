class BooksController < ApplicationController
  before_action :find_book, only: %i[show edit update destroy]
  def index
    #done
    @books = Book.all
  end

  def show
    #done
    @authors = Author.all
    @authorship = Authorship.new
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(books_params)
    redirect_to books_path
  end

  def edit
    #done
  end

  def update
    #done
    @book.update(books_params)
    redirect_to @book
  end

  def destroy
    #done
    @book.destroy
    redirect_to books_path
  end

  private

  def find_book
    @book = Book.find(params[:id])
  end

  def books_params
    params.require(:book).permit(:title, :pages)
  end
end
