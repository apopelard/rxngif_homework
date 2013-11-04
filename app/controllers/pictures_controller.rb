class PicturesController < ApplicationController
  def show
    if (params[:id].to_i < Picture.count + 1) && (params[:id].to_i > 1)
      @picture = Picture.find(params[:id])
    else
      @picture = Picture.new
      @picture.source = ""
      @picture.caption = "Sorry this picture does not exist. There are only #{Picture.count} pictures to display (numbered from 1 to #{Picture.count})"
    end
  end
end
