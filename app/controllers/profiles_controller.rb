class ProfilesController < ApplicationController
    #before_action :set_profile
    
    layout "profile_edit", only: [:edit]
    
    # GET /profiles
    def index
        @profiles = Profile.all();
    end
    
    # GET /profiles/1
    def show
        @profile = Profile.find(params[:id])
    end
    
    # GET /profiles/1
    def edit 
        @profile = Profile.find(params[:id])
    end
    
    # POST /profiles/
    #def new
    #    @profile = Profile.new
    #    @profile.profile_phones.build
    #end
  
    # PUT o PATCH /profiles/1
    def update
        
        @profile = Profile.find(params[:id])
        
        @profile.update(profile_params)
        
        if @profile.save
            redirect_to @profile, notice: 'El perfil fue actualizado satisfactoriamente'
        else
            render :edit
        end
    end
    
    # Aplicando método para obtener los datos del formulario
    #def profile_params
    #  params.require(:profile).permit(:nombres, :ap_paterno, :ap_materno, :descripcion, :direccion, :num_telefono)
    #end
    
    #private
    # Use callbacks to share common setup or constraints between actions.
    #def set_profile
      #@product = Profile.find(params[:id])
    #end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:nombres, :ap_paterno, :ap_materno, :descripcion, :direccion, :ub_country_id, :ub_department_id, :ub_province_id, :ub_district_id, profile_phones_attributes: [ :id, :num_telefono ])
    end
    
end
