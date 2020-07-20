class DoctorsController < ApplicationController
    before_action :doc_find, only: [:show]

    def index
        @doctors = Doctor.all
    end

    def show
    end


    private
    


    def doc_find
        @doctor = Doctor.find(params[:id])
    end
end
