class ContactosController < ApplicationController
  def new
    @contacto = Contacto.new
  end

      def create
        @contacto = Contacto.new(contacto_params)
         #@contact.save
          #redirect_to({ action: 'index' }, notice: "Something serious happened")
                if @contacto.save
                  redirect_to '/pages/gracias', notice: 'Tu mensaje fue recibido'
                else
                  render :new
                end
            #redirect_to @profile, notice: 'El perfil fue actualizado satisfactoriamente'
            #@contact.request = request
            #if @contact.deliver
            #flash.now[:notice] = 'Gracias por tu mensaje. Nos contactaremos contigo'
            # else
            # flash.now[:error] = 'No se pudo enviar tu mensaje.'
            #render :new
            #end
    
      end
        def index
          @contactos = Contacto.all
        end
        def contacto_params
            params.require(:contacto).permit(:nombre, :correo, :mensaje)
        end
end