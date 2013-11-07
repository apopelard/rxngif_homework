class PicturesController < ApplicationController
  def show
    if (params[:id].to_i < Picture.count + 1) && (params[:id].to_i > 0)
      @picture = Picture.find(params[:id])
    else
      @picture = Picture.new
      @picture.source = ""
      @picture.caption = "Sorry this picture does not exist. There are only #{Picture.count} pictures to display (numbered from 1 to #{Picture.count})"
    end
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

end
