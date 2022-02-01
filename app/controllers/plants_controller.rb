class PlantsController < ApplicationController

    def index
        plants = Plant.all
        render json: plants
    end

    def show 
        x = Plant.find_by(id: params[:id])
        if x
            render json: x
        else
            render json: { error: "No Plant" }, status: :not_found
        end
    end

    def create
        x = Plant.create(name: params[:name], image: params[:image], price: params[:price])
        render json: x, status: 201
    end

end
