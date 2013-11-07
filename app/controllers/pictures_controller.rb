class PicturesController < ApplicationController
  def show
    @picture = Picture.find(params[:id])
  end

  def index
    @all_pictures = Picture.all
  end

  def new
  end

  def create
    @new_picture = Picture.new
    @new_picture.caption = params[:caption]
    @new_picture.source = params[:source]
    @new_picture.save
  end

  def destroy
    Picture.find(params[:id]).destroy
  end

  def edit
    @picture = Picture.find(params[:id])
  end

end
