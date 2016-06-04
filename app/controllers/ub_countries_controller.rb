class UbCountriesController < ApplicationController
    
    # GET /countries
    def index 
        @countries = UbCountry.all;
        render json: @countries
    end
    
end
