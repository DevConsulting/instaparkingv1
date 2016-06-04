class UbDistrictsController < ApplicationController

    def showDistricts
        @districts = UbDistrict.where(ub_department_id: params[:department], ub_province_id: params[:province])
        render json: @districts
    end

end
