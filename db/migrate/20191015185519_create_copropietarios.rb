class CreateCopropietarios < ActiveRecord::Migration[6.0]
  def change
    create_table :copropietarios do |t|
      t.string :id_copropietario
      t.string :nombres
      t.string :cedula
      t.date :fecha_nacimiento
      t.string :actividad
      t.string :direccion
      t.string :telefono
      t.string :celular
      t.string :mail
      t.string :id_edificio
      t.string :id_departamento

      t.timestamps
    end
  end
end
