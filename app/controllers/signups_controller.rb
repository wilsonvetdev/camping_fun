class SignupsController < ApplicationController

    def index 
        @signups = Signup.all
    end

    def new
        @signup = Signup.new
        @campers = Camper.all
        @activities = Activity.all
    end

    def create
        # digesting the request: working with params
        signup_params = params.require(:signup).permit(:camper_id, :activity_id, :time)
        @signup = Signup.create(signup_params)
        camper = Camper.find(params[:signup][:camper_id])
        # byebug
        # redirect_to campers_path
        #response: redirect to show page of camper
        redirect_to camper_path(camper)
    end
    
end
