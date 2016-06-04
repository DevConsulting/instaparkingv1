class UbDepartmentsController < ApplicationController
    
    # GET /ub_departments/1
    def show
        @departments = UbDepartment.where(ub_country_id: params[:country])
        render json: @departments
    end
end
