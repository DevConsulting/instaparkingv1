class AddUbigeoRef < ActiveRecord::Migration
  def change
    
    # Referencia Tabla País
    add_reference :ub_countries, :ub_departments, index: true, foreign_key: true
    
    # Referencia Tabla Departamento y Tabla Provincia
    add_reference :ub_departments, :ub_provinces, index: true, foreign_key: true
    
    # Referencia Tabla Provincia, Tabla Distrito
    add_reference :ub_departments, :ub_districts, index: true, foreign_key: true
    add_reference :ub_provinces, :ub_districts, index: true, foreign_key: true
    
  end
end
