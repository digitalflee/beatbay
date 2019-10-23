class BeatsController < ApplicationController

    def show
        @beat = Beat.find(params[:id])
    end 

    


end
