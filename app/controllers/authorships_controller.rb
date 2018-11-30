class AuthorshipsController < ApplicationController
  def create
    authorship = Authorship.create(author_id: params[:authorship][:author_id], book_id: params[:book_id])
    redirect_to book_path(authorship.book)
  end

  def destroy
    @authorship = Authorship.find(params[:book_id])
    @authorship.destroy
    redirect_to book_path(params[:id])
  end
end
