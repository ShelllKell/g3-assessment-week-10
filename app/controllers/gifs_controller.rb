class GifsController < ApplicationController

  def index
    @gifs = Gif.order(:title)
  end

  def show
    @gif = Gif.find(params[:id])
  end

  def new
    @gif = Gif.new
  end

  def create
    @gif = Gif.new(:url => params[:gif][:url], :title => params[:gif][:title])

    if @gif.save
      flash[:notice] = "Gif was created successfully"
      redirect_to "/"
    else
      render :new
    end
  end


end