class UbProvincesController < ApplicationController
    
    # GET /ub_provinces/1
    def show
        #@provinces = UbProvince.where(ub_department_id: params[:deparment])
    end
    
    # GET /provinces/:deparment/
    def showProvinces
        @provinces = UbProvince.where(ub_department_id: params[:department])
        render json: @provinces
    end
    
end
