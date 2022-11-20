class BirdsController < ApplicationController

    #GET /birds
    def index
        render json: Bird.all
    end

    #GET /birds/:id
    def show
        bird = Bird.find_by(id: params[:id])
        if bird
            render json: bird
        else
            render json: {error: 'Could not find bird'}, status: :not_found
        end
    end

end
