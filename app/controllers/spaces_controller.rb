class SpacesController < ApplicationController
    
    layout "spaces_layout", only: [:new, :show]
    
    def new
        @spaces = ''
    end
    
    def show
        @spaces = ''
    end
    
    def create
        @space = Space.new(space_params);
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def space_params
      params.require(:space).permit(:nom_space, :descripcion, :observacion)
    end
    
end
