class AuthorsController < ApplicationController
  before_action :find_author, only: %i[show edit update destroy]
  def index
    #done
    @authors = Author.all
  end

  def show
    #done
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.create(authors_params)
    if @author.valid?
      redirect_to authors_path
    else
      render 'new'
    end
  end

  def edit
    #done
  end

  def update
    #done
    @author.update(authors_params)
    if @author.valid?
      redirect_to @author
    else
      render 'edit'
    end
  end

  def destroy
    #done
    @author.destroy
    redirect_to authors_path
  end

  private

  def find_author
    @author = Author.find(params[:id])
  end

  def authors_params
    params.require(:author).permit(:name, :birth_year)
  end
end
