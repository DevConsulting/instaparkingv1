class ProfilePhonesController < ApplicationController
    
    def index
        
        @profile_phones = ProfilePhone.all
        render json: @profile_phones
        
    end
    # POST /profile_phones
    # POST /profile_phones.json
    def create 
        
        @profile_phone = ProfilePhone.new(profile_phones_params)   
        @profile_phone.save
        render json: @profile_phone
        
    end
    
    # PATCH/PUT /profile_phones/1
    # PATCH/PUT /profile_phones/1.json
    def update
        
        @profile_phone = ProfilePhone.find(params[:id])
        @profile_phone.update(profile_phones_params)
        render json: @profile_phone
        
    end
    
      # DELETE /profile_phones/1
      # DELETE /profile_phones/1.json
      def destroy
          
        @profile_phone = ProfilePhone.find(params[:id])  
        @profile_phone.destroy
        render json: @profile_phone
        
      end
    
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_phones_params
      params.require(:profile_phones).permit(:num_telefono, :phone_type_id, :profile_id)
    end
    
end
