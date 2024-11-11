class Tarea
    attr_accessor :identificador, :titulo, :descripcion, :estado
    
    def initialize(identificador, titulo, descripcion)
        @identificador = identificador
        @titulo = titulo
        @descripcion = descripcion
        @estado = "pendiente"
    end
end