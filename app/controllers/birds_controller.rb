class BirdsController < ApplicationController

    def index
        birds = Bird.all
        render json: birds
    end

    def show
        bird = Bird.find params[:id]
        if bird
            render json: bird, status: :ok
        else
            render [{error: 'bird not found'}], status: :not_found
        end
    end
end
