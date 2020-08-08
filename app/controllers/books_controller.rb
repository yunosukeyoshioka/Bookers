class BooksController < ApplicationController

  def index
  	@books = Book.all
  	@book = Book.new 
  end	

  def show
  	@book = Book.find(params[:id])
  end




  def create
    @book = Book.create(book_params)

  	if @book.save
  		redirect_to book_path(@book.id)
  	else
      @books = Book.all
      render "index"
    end	
  end



  def edit
  	@book = Book.find(params[:id])
  end


  def update
  	@book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path(@book.id)
    else
      render "edit"
    end 
  end	


  def destroy
  	@book = Book.find(params[:id])
  	@book.destroy
  	redirect_to "http://localhost:3000/books" #(ここにトップへ戻るコマンドを記載？
  end 
	

  private
   def book_params
		params.require(:book).permit(:title, :body)
   end	
end