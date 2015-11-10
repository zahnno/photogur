class PicturesController < ApplicationController

    def index
		@pictures = Picture.all
	end

	def show
		@picture = Picture.find(params[:id])
	end

	def new
	end

	def create
		 @picture = Picture.new(picture_params)
    	 if @picture.save
      # if the save for the picture was successful, go to index.html.erb
    	    redirect_to pictures_url
    	 else
      # otherwise render the view associated with the action :new (i.e. new.html.erb)
      	 render :new
    	 end
    
    private
    def picture_params
      params.require(:picture).permit(:artist, :title, :url)
    end


	end
