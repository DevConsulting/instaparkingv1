class AddSpaceRefUbigeo < ActiveRecord::Migration
  def change
    
    # Referencia Tabla País
    add_reference :space_ubications, :ub_country, index: true, foreign_key: true
    
    # Referencia Tabla Departamento
    add_reference :space_ubications, :ub_department, index: true, foreign_key: true
    
    # Referencia Tabla Provincia
    add_reference :space_ubications, :ub_province, index: true, foreign_key: true
    
    # Referencia Tabla Distrito
    add_reference :space_ubications, :ub_district, index: true, foreign_key: true 
    
  end
end
