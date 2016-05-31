class AddUbigeoRef < ActiveRecord::Migration
  def change
    
    # Referencia Tabla País
    add_reference :ub_departments, :ub_country, index: true, foreign_key: true
    
    # Referencia Tabla Departamento y Tabla Provincia
    add_reference :ub_provinces, :ub_department, index: true, foreign_key: true
    
    # Referencia Tabla Departamento, Tabla Distrito
    add_reference :ub_districts, :ub_department, index: true, foreign_key: true
    
    # Referencia Tabla Departamento, Tabla Provincia
    add_reference :ub_districts, :ub_province, index: true, foreign_key: true
    
  end
end
