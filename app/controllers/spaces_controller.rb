class SpacesController < ApplicationController
    
    layout "spaces_layout", only: [:new, :show, :edit, :list, :index]
    
    # GET /spaces/
    def new
        @space = Space.new
        @space.build_space_ubication
    end
    
    def index
        @spaces = Space.all
    end
    
    # GET /spaces/1
    def show
        @space = Space.find(params[:id])
    end
    
    def list
        @spaces = Space.where(created_by: params[:id])
    end
    
    # GET /spaces/1
    def edit 
        @space = Space.find(params[:id])
    end
    
    # POST /spaces/1
    def create
        @space = Space.new(space_params);
        if @space.save
            redirect_to @space, notice: 'El Espacio fue creado satisfactoriamente'
        else
            render :action => "show", :id => @space.id
        end
    end
    
    # PUT o PATCH /spaces/1
    def update
        
        @space = Space.find(params[:id])
        @space.update(space_params)
        
        if @space.save
            redirect_to @space, notice: 'El Espacio fue actualizado satisfactoriamente'
        else
            render :edit
        end
        
    end
    
    # Parametros
    def space_params
      params.require(:space).permit(
            :nom_space, 
            :descripcion, 
            :observacion, 
            :num_espacio, 
            :type_offer_person_id, 
            :space_type_id, 
            :created_by,
            space_ubication_attributes: [ 
                                        :id, 
                                        :direccion,
                                        :lat,
                                        :long,
                                        :ub_country_id,
                                        :ub_department_id,
                                        :ub_province_id,
                                        :ub_district_id
                                        ],
            :service_ids => []
          )
    end
    
end
