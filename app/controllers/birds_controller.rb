class BirdsController < ApplicationController
    def index
        birds=Bird.all
        render json:birds, only: [:id,:name,:species]
    end
    def show
        birds = Bird.find_by(id: params[:id])
        render json:birds ,only: [:id,:name,:species]
    end
end
