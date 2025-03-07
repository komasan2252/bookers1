class BooksController < ApplicationController
  def new
  end

 

  def index
    @books = Book.all
    @book = Book.new
   
  end
  def destroy
     
    book = Book.find(params[:id]) 
    book.destroy  
    flash[:notice] = "Book was successfully destroyed."
    redirect_to '/books' 
  end

  def create
    @book = Book.new(book_params)
    if @book.save
     
      redirect_to book_path(@book.id)
       flash[:notice] = "Book was successfully created."
    else
      @books = Book.all
      render :index
    end
    book = Book.new(book_params)
    
    
  end

  def show
    @book = Book.find(params[:id])  
    
  end

  def edit
    @book = Book.find(params[:id])  
   
    
    
  end

  def update
   
   
    @book = Book.find(params[:id])
     
    if @book.update(book_params)
     
     
      redirect_to book_path(@book.id)
       flash[:notice] = "Book was successfully created."
    else
      
      
      
   
      render :edit  
      
   
    end
    book = Book.new(book_params)
    
   
    

    
      
     
    
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
