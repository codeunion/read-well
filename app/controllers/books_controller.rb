class BooksController < ApplicationController
  def new
    
  end
  
  def create
    
    flash[:notice]="You created a book successfully"
    redirect_to root_path
  end
end
