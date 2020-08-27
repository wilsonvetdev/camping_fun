class SignupsController < ApplicationController

    def index 
        @signups = Signup.all
    end
    
end
