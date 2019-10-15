require 'test_helper'

class CopropietariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @copropietario = copropietarios(:one)
  end

  test "should get index" do
    get copropietarios_url
    assert_response :success
  end

  test "should get new" do
    get new_copropietario_url
    assert_response :success
  end

  test "should create copropietario" do
    assert_difference('Copropietario.count') do
      post copropietarios_url, params: { copropietario: { actividad: @copropietario.actividad, cedula: @copropietario.cedula, celular: @copropietario.celular, direccion: @copropietario.direccion, fecha_nacimiento: @copropietario.fecha_nacimiento, id_copropietario: @copropietario.id_copropietario, id_departamento: @copropietario.id_departamento, id_edificio: @copropietario.id_edificio, mail: @copropietario.mail, nombres: @copropietario.nombres, telefono: @copropietario.telefono } }
    end

    assert_redirected_to copropietario_url(Copropietario.last)
  end

  test "should show copropietario" do
    get copropietario_url(@copropietario)
    assert_response :success
  end

  test "should get edit" do
    get edit_copropietario_url(@copropietario)
    assert_response :success
  end

  test "should update copropietario" do
    patch copropietario_url(@copropietario), params: { copropietario: { actividad: @copropietario.actividad, cedula: @copropietario.cedula, celular: @copropietario.celular, direccion: @copropietario.direccion, fecha_nacimiento: @copropietario.fecha_nacimiento, id_copropietario: @copropietario.id_copropietario, id_departamento: @copropietario.id_departamento, id_edificio: @copropietario.id_edificio, mail: @copropietario.mail, nombres: @copropietario.nombres, telefono: @copropietario.telefono } }
    assert_redirected_to copropietario_url(@copropietario)
  end

  test "should destroy copropietario" do
    assert_difference('Copropietario.count', -1) do
      delete copropietario_url(@copropietario)
    end

    assert_redirected_to copropietarios_url
  end
end
