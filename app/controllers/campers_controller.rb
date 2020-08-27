class CampersController < ApplicationController

    def index
        @campers = Camper.all
    end

    def show
        @camper = Camper.find(params[:id])
    end

    def new
        @camper = Camper.new
    end

    def create
        # digesting the request: working with params
        camper_params = params.require(:camper).permit(:name, :age)
        @camper = Camper.create(camper_params)

        #response: redirect to index page
        # redirect_to campers_path
        #response: redirect to show page
        redirect_to camper_path(@camper)
    end

end
