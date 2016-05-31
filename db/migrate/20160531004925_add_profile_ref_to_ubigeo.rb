class AddProfileRefToUbigeo < ActiveRecord::Migration
  def change
    
    # Referencia Tabla País
    add_reference :profiles, :ub_country, index: true, foreign_key: true
    
    # Referencia Tabla Departamento
    add_reference :profiles, :ub_department, index: true, foreign_key: true
    
    # Referencia Tabla Provincia
    add_reference :profiles, :ub_province, index: true, foreign_key: true
    
    # Referencia Tabla Distrito
    add_reference :profiles, :ub_district, index: true, foreign_key: true 
      
  end
end
