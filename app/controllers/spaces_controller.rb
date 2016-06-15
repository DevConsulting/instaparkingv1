class SpacesController < ApplicationController
    
    layout "spaces_layout", only: [:new, :show]
    
    def new
        @space = Space.new
        @space.build_space_ubication
    end
    
    def show
        @spaces = ''
    end
    
    def create
        @space = Space.new(space_params);
        @space.inspect;
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def space_params
      params.require(:space).permit(
            :nom_space, 
            :descripcion, 
            :observacion, 
            :num_espacio, 
            :type_offer_person_id, 
            :space_type_id, 
            space_ubication_attributes: [ 
                                        :id, 
                                        :direccion,
                                        :lat,
                                        :long,
                                        :ub_country_id,
                                        :ub_department_id,
                                        :ub_province_id,
                                        :ub_district_id
                                        ]
            
          )
    end
    
end
