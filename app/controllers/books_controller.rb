class BooksController < ApplicationController
  before_action :set_book, only: [:edit, :update]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to books_path, notice: 'Book was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to books_path, notice: 'Book was successfully updated.'
    else
      render :edit
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :genre)
  end

  def set_book
    @book = Book.find(params[:id])
  end
end