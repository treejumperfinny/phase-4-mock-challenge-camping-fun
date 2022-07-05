class CampersController < ApplicationController
    
    def index
        render json: Camper.all    
    end

    def show
        render json: Camper.find_by(id: params[:id])
    end
end
