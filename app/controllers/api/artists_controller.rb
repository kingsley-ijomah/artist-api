module Api
  class ArtistsController < ApplicationController

  	respond_to :json, :html

  	def index
      @artists = Artist.where(query_params).page(params[:page]).per(10)
      respond_with @artists
    end

    def create
    	@artist = Artist.new(artist_params)
      if @artist.save
        render :show, status: :created
      else
        render json: @artist.errors, status: :unprocessable_entity
      end
    end

    def destroy
    	@artist = Artist.find(params[:id])
      @artist.destroy
      head :no_content
    end

    def show
    	@artist = Artist.find(params[:id])
      respond_with @artist
    end

    def update
    	@artist = Artist.find(params[:id])
      if @artist.update(artist_params)
        render :show
      else
        render json: @artist.errors, status: :unprocessable_entity
      end
    end

    private

	    def artist_params
	      params.require(:artist).permit(:name)
	    end

	    def query_params
	      params.permit(:name)
	    end
  end
end
