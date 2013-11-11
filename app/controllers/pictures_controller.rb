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

    redirect_to("#{post_url(@new_picture.id)}", notice: "Your picture was created successfully")

  end

  def destroy
    Picture.find(params[:id]).destroy

    redirect_to("#{posts_url}", notice: "Your picture was deleted successfully")
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])
    @picture.source = params[:source]
    @picture.caption = params[:caption]
    @picture.save

    redirect_to("#{posts_url}", notice: "Your picture was updated successfully")
  end

end
