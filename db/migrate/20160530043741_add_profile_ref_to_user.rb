class AddProfileRefToUser < ActiveRecord::Migration
  def change
    
      # Referencia de la tabla Usuario (por defecto ya crea la relacion con un campo user_id)
      add_reference :profiles, :user, index: true, foreign_key: true
      
  end
end
