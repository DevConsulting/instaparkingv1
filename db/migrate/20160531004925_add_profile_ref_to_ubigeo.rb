class AddProfileRefToUbigeo < ActiveRecord::Migration
  def change
    
      # Referencia Tabla País
      add_reference :ub_countries, :profile, index: true, foreign_key: true
      
      # Referencia Tabla Departamento
      add_reference :ub_departments, :profile, index: true, foreign_key: true
      
      # Referencia Tabla Provincia
      add_reference :ub_provinces, :profile, index: true, foreign_key: true
      
      # Referencia Tabla Distrito
      add_reference :ub_districts, :profile, index: true, foreign_key: true 
      
  end
end
