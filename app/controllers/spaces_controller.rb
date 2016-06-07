class SpacesController < ApplicationController
    
    layout "spaces_layout", only: [:new, :show]
    
    def new
        @spaces = ''
    end
    
    def show
        @spaces = ''
    end
    
end
