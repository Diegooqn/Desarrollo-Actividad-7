class ControladorTarea
    def initialize
        @tareas = []
        @vista = VistaTarea.new
        @contador_identificador = 1
    end

    def agregar_tarea
        titulo = @vista.pedir_titulo_tarea
        descripcion = @vista.pedir_descripcion_tarea
        tarea = Tarea.new(@contador_identificador, titulo, descripcion)
        @tareas << tarea
        @contador_identificador += 1
        puts "¡Tarea agregada con éxito!"
    end

    def mostrar_tareas
        @vista.mostrar_tareas(@tareas)
    end

    def cambiar_estado
        @vista.mostrar_tareas(@tareas)
        return puts("No hay tareas para cambiar estado.") if @tareas.empty?
        
        identificador = @vista.pedir_identificador_tarea
        tarea = @tareas.find { |t| t.identificador == identificador }
        
        if tarea
            tarea.estado = tarea.estado == "pendiente" ? "completado" : "pendiente"
            puts "¡Estado cambiado con éxito!"
        else
            puts "Tarea no encontrada."
        end
    end

    def eliminar_tarea
        @vista.mostrar_tareas(@tareas)
        return puts("No hay tareas para eliminar.") if @tareas.empty?
        
        identificador = @vista.pedir_identificador_tarea
        tarea = @tareas.find { |t| t.identificador == identificador }
        
        if tarea
            @tareas.delete(tarea)
            puts "¡Tarea eliminada con éxito!"
        else
            puts "Tarea no encontrada."
        end
    end
end