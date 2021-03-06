class ShoesController < ApplicationController
    
    def index
        shoes = Shoe.all

        render json: shoes, include: [:brand]
    end

    def show
        shoes = Shoe.find_by_id(params[:id])
        render json: shoes
    end


    def create 
        shoes = Shoe.new(params[shoe_params])
        if shoes.save
            render json: shoes
            
        elsif 
            shoes.build_brand
        else
            render json: {error: "We can't do that", status:400}
        end
    end

    def destroy
        shoes = Shoe.find_by(shoe_params)
        shoe_params.destroy
    end


    private
    def shoe_params
        params.require(:shoe).permit(:name, :description, :image, :brand_id, brand_attributes: [:name])#schema
    end
end