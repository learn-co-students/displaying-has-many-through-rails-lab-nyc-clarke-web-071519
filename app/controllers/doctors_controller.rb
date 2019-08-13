class DoctorsController < ApplicationController

    def index 
        @doctors = Doctor.all
    end 

    def show 
        @doc = Doctor.find(params[:id])
    end 

    private 

    def params_
        params.require(:doctor).permit(:name, :age)
    end 

end 