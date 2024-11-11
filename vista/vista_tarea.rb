class VistaTarea
    def mostrar_menu
        puts "\n=== Aplicación To Do List ==="
        puts "1. Agregar tarea"
        puts "2. Ver tareas"
        puts "3. Cambiar estado de tarea"
        puts "4. Eliminar tarea"
        puts "5. Salir"
        print "Elige una opción: "
    end

    def pedir_titulo_tarea
        print "Ingresa el título de la tarea: "
        gets.chomp
    end

    def pedir_descripcion_tarea
        print "Ingresa la descripción de la tarea: "
        gets.chomp
    end

    def mostrar_tareas(tareas)
        puts "\n=== Lista de Tareas ==="
        if tareas.empty?
            puts "No hay tareas registradas."
        else
            tareas.each do |tarea|
                puts "\nIdentificador: #{tarea.identificador}"
                puts "Título: #{tarea.titulo}"
                puts "Descripción: #{tarea.descripcion}"
                puts "Estado: #{tarea.estado}"
                puts "-" * 30
            end
        end
    end

    def pedir_identificador_tarea
        print "Ingresa el identificador de la tarea: "
        gets.chomp.to_i
    end
end