require_relative 'modelo/tarea'
require_relative 'vista/vista_tarea'
require_relative 'controlador/controlador_tarea'

controlador = ControladorTarea.new
vista = VistaTarea.new

loop do
    vista.mostrar_menu
    opcion = gets.chomp.to_i

    case opcion
    when 1
        controlador.agregar_tarea
    when 2
        controlador.mostrar_tareas
    when 3
        controlador.cambiar_estado
    when 4
        controlador.eliminar_tarea
    when 5
        puts "Nos vemos despues:)"
        break
    else
        puts "Opción inválida"
    end
end