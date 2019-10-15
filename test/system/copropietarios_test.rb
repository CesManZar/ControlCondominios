require "application_system_test_case"

class CopropietariosTest < ApplicationSystemTestCase
  setup do
    @copropietario = copropietarios(:one)
  end

  test "visiting the index" do
    visit copropietarios_url
    assert_selector "h1", text: "Copropietarios"
  end

  test "creating a Copropietario" do
    visit copropietarios_url
    click_on "New Copropietario"

    fill_in "Actividad", with: @copropietario.actividad
    fill_in "Cedula", with: @copropietario.cedula
    fill_in "Celular", with: @copropietario.celular
    fill_in "Direccion", with: @copropietario.direccion
    fill_in "Fecha nacimiento", with: @copropietario.fecha_nacimiento
    fill_in "Id copropietario", with: @copropietario.id_copropietario
    fill_in "Id departamento", with: @copropietario.id_departamento
    fill_in "Id edificio", with: @copropietario.id_edificio
    fill_in "Mail", with: @copropietario.mail
    fill_in "Nombres", with: @copropietario.nombres
    fill_in "Telefono", with: @copropietario.telefono
    click_on "Create Copropietario"

    assert_text "Copropietario was successfully created"
    click_on "Back"
  end

  test "updating a Copropietario" do
    visit copropietarios_url
    click_on "Edit", match: :first

    fill_in "Actividad", with: @copropietario.actividad
    fill_in "Cedula", with: @copropietario.cedula
    fill_in "Celular", with: @copropietario.celular
    fill_in "Direccion", with: @copropietario.direccion
    fill_in "Fecha nacimiento", with: @copropietario.fecha_nacimiento
    fill_in "Id copropietario", with: @copropietario.id_copropietario
    fill_in "Id departamento", with: @copropietario.id_departamento
    fill_in "Id edificio", with: @copropietario.id_edificio
    fill_in "Mail", with: @copropietario.mail
    fill_in "Nombres", with: @copropietario.nombres
    fill_in "Telefono", with: @copropietario.telefono
    click_on "Update Copropietario"

    assert_text "Copropietario was successfully updated"
    click_on "Back"
  end

  test "destroying a Copropietario" do
    visit copropietarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Copropietario was successfully destroyed"
  end
end
